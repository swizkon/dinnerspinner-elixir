defmodule DinnerSpinner.Dinners do
    use Ecto.Schema

    schema "dinners" do
        field :title, :string
        field :ingredients, :string

        timestamps
    end

end