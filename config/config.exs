use Mix.Config

config :ostrich, Ostrich.Slack,
token: System.get_env("OSTRICH_SLACK_TOKEN")
