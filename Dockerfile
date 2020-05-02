FROM ruby:2.7.1-alpine

ARG PORT=3000

ENV TZ America/Sao_Paulo
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV RAILS_ENV production
ENV RAILS_LOG_TO_STDOUT true

WORKDIR /app
EXPOSE $PORT

COPY Gemfile .
COPY Gemfile.lock .

ARG BUILD_PACKAGES="build-base g++ gcc make git"
RUN gem install bundler && \
    apk update && \
    apk add --update --no-cache libxslt-dev ${BUILD_PACKAGES} postgresql-dev less \
    jq nginx tzdata curl openssl tar && \
    bundle install && \
    bundle config build.nokogiri --use-system-libraries && \
    bundle config --global --jobs `expr $(grep processor /proc/cpuinfo | wc -l) - 1` && \
    apk del ${BUILD_PACKAGES} && \
    rm -r /var/cache/apk/*

COPY . /app/

ENTRYPOINT ["./scripts/entrypoint.sh"]

CMD ["./scripts/web.sh"]
