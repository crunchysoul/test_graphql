defmodule TestGraphqlWeb.Router do
  use TestGraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TestGraphqlWeb do
    pipe_through :api
  end
end
