defmodule Ostrich.Slack do
  use Slack

  def start_link, do: start_link(Application.get_env(:ostrich, __MODULE__)[:token], [])

  def handle_message(message = %{type: "message", text: text}, slack, state) do
    if text == "<@#{slack.me.id}>: hello" do
      Slack.send_message("Hello!", message.channel, slack)
    end

    {:ok, state}
  end



  def handle_message(_message, _slack, state), do: {:ok, state}
end