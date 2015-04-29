defmodule PhoenixExrethinkdbChat.PageControllerTest do
  use PhoenixExrethinkdbChat.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert conn.resp_body =~ "Welcome to Phoenix!"
  end
end
