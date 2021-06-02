defmodule DinnerSpinnerWeb.DinnerController do
  use DinnerSpinnerWeb, :controller

  def index(conn, _params) do
    dinners = DinnerSpinner.DinnerQueries.get_all
    render(conn, "index.html", dinners: dinners)
  end

  def show(conn, %{"id" => id}) do
    dinner = DinnerSpinner.DinnerQueries.get_by_id(id)
      |> IO.inspect()
    render(conn, "details.html", dinner: dinner)
  end
end
