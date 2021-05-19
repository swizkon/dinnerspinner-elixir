defmodule DinnerSpinner.Dinners do
    use Ecto.Schema

    import Ecto.Changeset

    schema "dinners" do
        field :title, :string
        field :ingredients, :string

        timestamps()
    end

    @required_fields ~w(title)a    
    @optional_fields ~w(ingredients)a

    def changeset(dinner, params \\ %{}) do
        dinner
        |> cast(params, @required_fields ++ @optional_fields)
        |> validate_required(@required_fields)
    end
    
end