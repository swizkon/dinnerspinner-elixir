# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :dinner_spinner_web,
  ecto_repos: [DinnerSpinnerWeb.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :dinner_spinner_web, DinnerSpinnerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UU/FueMizoNAFK05tjErJEfVeSkq6IYAJkI89lS9k5vTRfBwkGkm8dzYq7LiJzx0",
  render_errors: [view: DinnerSpinnerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: DinnerSpinnerWeb.PubSub,
  live_view: [signing_salt: "wbvej/EA"]

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :dinner_spinner_web, DinnerSpinnerWebWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    node: [
      "node_modules/webpack/bin/webpack.js",
      "--mode",
      "development",
      "--watch-stdin",
      cd: Path.expand("../apps/dinner_spinner_web/assets", __DIR__)
    ]
  ]
# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
