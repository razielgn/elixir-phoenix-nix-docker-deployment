defmodule Foo.Repo do
  use Ecto.Repo,
    otp_app: :foo,
    adapter: Ecto.Adapters.Postgres
end
