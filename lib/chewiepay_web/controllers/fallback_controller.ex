defmodule ChewiepayWeb.FallbackController do
  use ChewiepayWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(ChewiepayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
