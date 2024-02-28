import Config

config :foo, Foo.Repo,
  url: System.get_env("TEST_DATABASE_URL"),
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 20

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :foo, FooWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "GIskKdq7RYV5ghrB2crYzvN5Z+4p4RPV3BvMpse85W/HcSHgUW/7/frSvEcqmPSm",
  server: false

# In test we don't send emails.
config :foo, Foo.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
