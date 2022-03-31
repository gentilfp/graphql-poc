source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'active_model_serializers', '~> 0.10.10'
gem 'activerecord-import', '~> 1.0.4'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'ddtrace', '~> 0.23.2'
gem 'graphql', '~> 1.9', '>= 1.9.11'
gem 'pg', '~> 0.18.4'
gem 'puma', '~> 4.3'
gem 'rack-cors'
gem 'rails', '~> 6.0', '>= 6.0.2'
gem 'rails-healthcheck', '~> 1.0', '>= 1.0.4'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
end

group :development do
  gem 'brakeman'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop-rails', '~> 2.5.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner'
  gem 'fakeredis', require: 'fakeredis/rspec'
  gem 'rspec-graphql_matchers', '~> 0.7.1'
  gem 'shoulda-matchers', '~> 4.1'
  gem 'simplecov', require: false
  gem 'timecop'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
