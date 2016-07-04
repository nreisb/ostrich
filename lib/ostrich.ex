defmodule Ostrich do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Ostrich.Slack, [])
    ]

    opts = [strategy: :one_for_one, name: Ostrich.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
