defmodule PhoenixBank.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :active, :boolean, default: false
    field :balance, :float
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :active, :balance])
    |> validate_required([:name, :active, :balance])
  end
end
