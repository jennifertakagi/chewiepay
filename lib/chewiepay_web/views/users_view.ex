defmodule  ChewiepayWeb.UsersView do
  alias Chewiepay.{Account, User}

  def render("create.json", %{
    user: %User{
        account: %Account{id: account_id, balance: balance},
        id: id,
        name: name,
        nickname: nickname
        }
      }) do
    %{
      message: "User #{name} created",
      user: %{
        id: id,
        name: name,
        nickname: nickname,
        account: %{
          id: account_id,
          balance: balance
        }
      }
    }
  end
end
