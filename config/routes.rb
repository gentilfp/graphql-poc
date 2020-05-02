Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  root to: proc { [200, {}, ['']] }
end
