defmodule Chewiepay.Accounts.Withdrawal do
  alias Chewiepay.Accounts.Operation
  alias Chewiepay.Repo

  def call(params) do
    params
    |> Operation.call(:withdrawal)
    |> run_transaction()
  end

  defp run_transaction(multi) do
    case Repo.transaction(multi) do
      {:error, _operation, reason, _changes} -> {:error, reason}
      {:ok, %{withdrawal: account}} -> {:ok, account}
    end
  end
end
