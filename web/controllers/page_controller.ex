defmodule Octopusher.PageController do
  use Octopusher.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
