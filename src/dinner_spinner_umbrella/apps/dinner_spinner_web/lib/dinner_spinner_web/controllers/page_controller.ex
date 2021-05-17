defmodule DinnerSpinnerWeb.PageController do
  use DinnerSpinnerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
