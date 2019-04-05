defmodule WebStream.WebStream.Media.Resource do
  use Ecto.Schema
  import Ecto.Changeset

  schema "media_resources" do

    timestamps()
  end

  @doc false
  def changeset(resource, attrs) do
    resource
    |> cast(attrs, [])
    |> validate_required([])
  end
end
