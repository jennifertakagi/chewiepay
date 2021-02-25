defmodule ChewiepayWeb.UsersController do
  use ChewiepayWeb, :controller

  alias Chewiepay.User

  action_fallback ChewiepayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Chewiepay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
