defmodule WebStreamWeb.PageController do
  use WebStreamWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
