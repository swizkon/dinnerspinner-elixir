defmodule DinnerSpinner.DinnerQueries
    import Ecto.Query

    alias DinnerSpinner.[Repo, Dinners]

    
    def get_all do
         Repo.all(from Dinners)
    end
    
end