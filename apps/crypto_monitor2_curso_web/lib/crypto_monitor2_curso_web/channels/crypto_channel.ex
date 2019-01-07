defmodule CryptoMonitor.Web.CryptoChannel do
  use Phoenix.Channel

  def join("ex_monitor:rates", _message, socket) do
    IO.inspect "JOIN"
    {:ok, socket}
  end
end