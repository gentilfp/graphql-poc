# frozen_string_literal: true

module GraphqlPoc
  class QueryReader
    attr_reader :content

    def initialize
      @content = read
    end

    private

    def read
      YAML.safe_load(query.result(binding)).deep_symbolize_keys
    end

    def query_file_path
      Rails.root.join('lib/graphql_poc/query.yml')
    end

    def query_file
      File.read(query_file_path)
    end

    def query
      ERB.new(query_file)
    end
  end
end
