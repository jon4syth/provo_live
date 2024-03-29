# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :provo_live,
  ecto_repos: [ProvoLive.Repo]

# Configures the endpoint
config :provo_live, ProvoLiveWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "e1mZac3ceqaxfGBlFh7ZXk9uZVaoDOgwHSqmn6GWxW2jG7Vek4UXGyBq+w3/KWg6",
  render_errors: [view: ProvoLiveWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ProvoLive.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :provo_live, ProvoLiveWeb.Endpoint,
  live_view: [signing_salt: "1C4GTLvsKtdCc+7BaJwoqOU/9Dc2Iwpv"]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
