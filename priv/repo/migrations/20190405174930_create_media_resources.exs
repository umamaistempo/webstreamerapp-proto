defmodule WebStream.Repo.Migrations.CreateMediaResources do
  use Ecto.Migration

  def change do
    create table(:media_resources) do

      timestamps()
    end

  end
end
