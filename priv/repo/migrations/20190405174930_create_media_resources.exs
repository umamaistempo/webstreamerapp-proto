defmodule WebStream.Repo.Migrations.CreateMediaResources do
  use Ecto.Migration

  def change do
    execute("CREATE EXTENSION IF NOT EXISTS pgcrypto")

    create table(:media_resources, primary_key: false) do
      ## NOTE: Type is PostgreSQL's UUID4 because it optimizes the storage and indexation of it
      ##    and by being an UUID4, other producers can generate their own UUID (or rely on the default generator)
      add(:uuid, :uuid, primary_key: true, default: fragment("gen_random_uuid()"))
      add(:fallback_title, :string, null: false, comment: "The title for the resource when a translation-specific is not provided")

      timestamps(type: :utc_datetime)
    end
  end
end
