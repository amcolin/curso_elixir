defmodule CryptoMonitor.CryptoSocket do
  use Phoenix.Socket

  channel "ex_monitor:*", CryptoMonitor.Web.CryptoChannel

  transport :websocket, Phoenix.Transports.WebSocket

  def connect(_params, socket) do
    {:ok, socket}
  end

  def id(_socket), do: nil

end