module Types
  class QueryType < Types::BaseObject
    GraphqlPoc::QueryReader.new.content[:queries].each do |query|
      method = query.keys.first
      type = query[method][:type]
      value = query[method][:value]

      field method, type, null: false

      define_method method do
        value
      end
    end
  end
end
