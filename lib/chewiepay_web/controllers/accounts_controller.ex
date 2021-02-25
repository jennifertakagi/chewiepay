defmodule ChewiepayWeb.AccountsController do
  use ChewiepayWeb, :controller

  alias Chewiepay.Account

  action_fallback ChewiepayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Chewiepay.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end
end
