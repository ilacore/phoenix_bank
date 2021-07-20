defmodule PhoenixBank.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :active, :boolean, default: false, null: false
      add :balance, :float

      timestamps()
    end

  end
end
