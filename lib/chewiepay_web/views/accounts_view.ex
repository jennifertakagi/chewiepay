defmodule  ChewiepayWeb.AccountsView do
  alias Chewiepay.Account
  alias Chewiepay.Accounts.Transactions.Response, as: TransactionResponse

  def render("update.json", %{account: %Account{id: account_id, balance: balance }}) do
    %{
      message: "Balance updated sucessfully",
      account: %{
        id: account_id,
        name: balance
      }
    }
  end

  def render("transaction.json", %{transaction: %TransactionResponse{to_account: to_account, from_account: from_account }}) do
    %{
      message: "Transaction did sucessfully",
      transaction: %{
        to_account: %{
          id: to_account.balance,
          balance: to_account.balance
        },
        from_account: %{
          id: from_account.balance,
          balance: from_account.balance
        }
      }
    }
  end
end
