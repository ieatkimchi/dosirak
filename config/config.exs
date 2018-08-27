# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dosirak, ecto_repos: [Dosirak.Repo]

# Configures the endpoint
config :dosirak, DosirakWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+AQsxuZGbNN7c6bYfE0pqJ2adh/9XHc7t6SXHCP5csxVVJU0ceURDwWKK2SNl/yS",
  render_errors: [view: DosirakWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Dosirak.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# Guardian config
config :dosirak, Dosirak.Guardian,
       issuer: "dosirak",
       secret_key: "GA1onX6CljSp5B2mspEyC9F09Vrynic2bY9ZemZuMscAMv+NkY/z8Nw+ogl9/BLa"