defmodule DinnerSpinnerWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      DinnerSpinnerWeb.Telemetry,

      {Phoenix.PubSub, [name: DinnerSpinnerWeb.PubSub, adapter: Phoenix.PubSub.PG2]},

      # Start the Endpoint (http/https)
      DinnerSpinnerWeb.Endpoint
      # Start a worker by calling: DinnerSpinnerWeb.Worker.start_link(arg)
      # {DinnerSpinnerWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DinnerSpinnerWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    DinnerSpinnerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
