defmodule PhoenixExrethinkdbChat.PageController do
  use PhoenixExrethinkdbChat.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
