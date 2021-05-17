defmodule DinnerSpinner.Repo.Migrations.AddDinnersTable do
  use Ecto.Migration

  def change do
    create table(:dinners) do

      add :title, :string, size: 100
      add :ingredients, :string, size: 200
      
      timestamps()
    end

  end
end
