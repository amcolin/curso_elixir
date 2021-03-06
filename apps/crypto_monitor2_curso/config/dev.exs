use Mix.Config

# Configure your database
config :crypto_monitor2_curso, CryptoMonitor2Curso.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "crypto_monitor2_curso_dev",
  hostname: "localhost",
  pool_size: 20

config :crypto_monitor2_curso, CryptoMnesiaMonitor.Repo,
  adapter: EctoMnesia.Adapter,
  priv: "priv/mnesia_repo"
