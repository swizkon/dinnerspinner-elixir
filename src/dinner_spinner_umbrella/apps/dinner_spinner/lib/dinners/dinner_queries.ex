defmodule DinnerSpinner.DinnerQueries do
    import Ecto.Query

    alias DinnerSpinner.{Repo, Dinners}

    def any do
        Repo.one(from d in Dinners, select: count(d.id)) != 0
   end

   def get_by_id(id) do
    Repo.one(from d in Dinners, where: d.id == ^id)
   end

   def get_all do
        Repo.all(from Dinners)
   end

    def create(dinner) do        
        DinnerSpinner.Dinners.changeset(%DinnerSpinner.Dinners{}, dinner)
        |> Repo.insert!
    end
end