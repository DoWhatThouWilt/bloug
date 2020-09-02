defmodule Bloug.Repo do
  use Ecto.Repo,
    otp_app: :bloug,
    adapter: Ecto.Adapters.Postgres
end
