defmodule CryptoMonitor.Updater do
  use GenServer
  alias CryptoMonitor2CursoWeb.Endpoint, as: CryptoSocket

  def start_link(name) do
    GenServer.start_link(__MODULE__, nil, [name: name])
  end

  def handle_call({:update, currency, value}, _from, state) do
    CryptoSocket.broadcast("ex_monitor:rates", currency, %{"body": value})
    {:reply, :ok, state}
  end
end