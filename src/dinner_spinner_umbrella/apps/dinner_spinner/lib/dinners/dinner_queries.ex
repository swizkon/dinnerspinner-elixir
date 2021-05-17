defmodule DinnerSpinner.DinnerQueries do
    import Ecto.Query

    alias DinnerSpinner.{Repo, Dinners}

    def get_all do
         Repo.all(from Dinners)
    end
end