defmodule WebStream.Repo do
  use Ecto.Repo,
    otp_app: :web_stream,
    adapter: Ecto.Adapters.Postgres
end
