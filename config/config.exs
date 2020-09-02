# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bloug,
  ecto_repos: [Bloug.Repo]

# Configures the endpoint
config :bloug, BlougWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "afx/o8ZG2mXlCvVUe50r5FVEnrKN2Ptpy37AkUWbW4gVUb5PgWHnJPUXvUNxl1TE",
  render_errors: [view: BlougWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Bloug.PubSub,
  live_view: [signing_salt: "q0DcDjXS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Configures Pow
config :bloug, :pow,
  user: Bloug.Users.User,
  repo: Bloug.Repo,
  web_module: BlougWeb,
  extensions: [PowResetPassword],
  controller_callbacks: Pow.Extension.Phoenix.ControllerCallbacks,
  mailer_backend: BlougWeb.PowMailer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
