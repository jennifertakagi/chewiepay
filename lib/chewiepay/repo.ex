defmodule Chewiepay.Repo do
  use Ecto.Repo,
    otp_app: :chewiepay,
    adapter: Ecto.Adapters.Postgres
end
