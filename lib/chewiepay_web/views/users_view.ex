defmodule  ChewiepayWeb.UsersView do
  alias Chewiepay.User

  def render("create.json", %{user: %User{id: id, name: name, nickname: nickname}}) do
    %{
      message: "User #{name} created",
      user: %{
        id: id,
        name: name,
        nickname: nickname
      }
    }
  end
end
