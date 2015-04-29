defmodule PhoenixExrethinkdbChat.Endpoint do
  use Phoenix.Endpoint, otp_app: :phoenix_exrethinkdb_chat

  # Serve at "/" the given assets from "priv/static" directory
  plug Plug.Static,
    at: "/", from: :phoenix_exrethinkdb_chat,
    only: ~w(css images js favicon.ico robots.txt)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_phoenix_exrethinkdb_chat_key",
    signing_salt: "S+QpT6Zk",
    encryption_salt: "KLoBLHo6"

  plug :router, PhoenixExrethinkdbChat.Router
end
