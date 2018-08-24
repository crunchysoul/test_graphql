defmodule TestGraphqlWeb.Router do
  use TestGraphqlWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  # scope "/api", TestGraphqlWeb do
  #   pipe_through(:api)
  # end

  scope "/" do
    pipe_through(:api)

    forward("/graphiql", Absinthe.Plug.GraphiQL,
      schema: TestGraphqlWeb.Schema,
      interface: :simple,
      context: %{pubsub: TestGraphqlWeb.Endpoint}
    )
  end
end
