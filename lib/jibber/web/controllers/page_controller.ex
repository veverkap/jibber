defmodule Jibber.Web.PageController do
  use Jibber.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
