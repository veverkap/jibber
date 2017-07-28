# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :jibber,
  ecto_repos: [Jibber.Repo],
  generators: [binary_id: true]

# Configure phoenix generators
config :phoenix, :generators,
  binary_id: true

# Configures the endpoint
config :jibber, Jibber.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OBRl+1+c479j1F8FKAevv4QO7YlpGN46JkfZv85LPMmJ2E5my26wSnj6+k8pyjVF",
  render_errors: [view: Jibber.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Jibber.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Jibber.Coherence.User,
  repo: Jibber.Repo,
  module: Jibber,
  router: Jibber.Web.Router,
  messages_backend: Jibber.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:rememberable, :authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :registerable]

config :coherence, Jibber.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

