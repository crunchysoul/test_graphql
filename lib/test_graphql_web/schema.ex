defmodule TestGraphqlWeb.Schema do
  use Absinthe.Schema
  alias TestGraphql.News

  object :link do
    field(:id, non_null(:id))
    field(:url, non_null(:string))
    field(:description, non_null(:string))
  end

  query do
    # this is the query entry point to our app
    field(:all_links, non_null(list_of(non_null(:link))))
  end
end
