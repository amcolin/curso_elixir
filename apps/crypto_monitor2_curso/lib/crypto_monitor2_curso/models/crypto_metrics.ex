defmodule Crypto.Metrics do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  alias CryptoMnesiaMonitor.Repo

  schema "metrics" do
    field :data, Ecto.DateTime
    field :value, :decimal
    field :currency, :string
  end

  def create(params) do
    chs = changeset(%Crypto.Metrics{}, params)
    Repo.insert!(chs)
  end

  def changeset(metric, params \\ :empty) do
    metric
      |> cast(params, [:data, :value, :currency])
  end

  def get_metrics(currency) do
    query = from m in Crypto.Metrics,
    where: m.currency == ^currency,
    select: m
    Repo.one(query)
  end

end