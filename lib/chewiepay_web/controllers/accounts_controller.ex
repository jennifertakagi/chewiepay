defmodule ChewiepayWeb.AccountsController do
  use ChewiepayWeb, :controller

  alias Chewiepay.Account
  alias Chewiepay.Accounts.Transactions.Response, as: TransactionResponse

  action_fallback ChewiepayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Chewiepay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def withdrawal(conn, params) do
    with {:ok, %Account{} = account} <- Chewiepay.withdrawal(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- Chewiepay.transaction(params) do
      conn
      |> put_status(:ok)
      |> render("transaction.json", transaction: transaction)
    end
  end
end
