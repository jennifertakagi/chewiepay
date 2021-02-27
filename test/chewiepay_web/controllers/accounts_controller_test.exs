defmodule ChewiepayWeb.AccountsControllerTest do
  use ChewiepayWeb.ConnCase

  alias Chewiepay.{Account, User}

  describe "deposit/2" do
    setup %{conn: conn} do
      params = %{
        name: "Jennifer",
        password: "123456",
        nickname: "jenni",
        email: "jennifer@email.com",
        age: 27
      }

      {:ok, %User{account: %Account{id: account_id}}} = Chewiepay.create_user(params)

      conn = put_req_header(conn, "authorization", "Basic YWRtaW46YWRtaW4xMjM=")

      {:ok, conn: conn, account_id: account_id}
    end

    test "when all params are valid, make the deposit", %{conn: conn, account_id: account_id} do
      params = %{"value" => "500.00"}

      response =
        conn
        |> post(Routes.accounts_path(conn, :deposit, account_id, params))
        |> json_response(:ok)

      assert %{
                "account" => %{"balance" => "500.00", "id" => _id},
                "message" => "Balance updated sucessfully"
              } = response
    end

    test "when all params are invalid, returns an error", %{conn: conn, account_id: account_id} do
      params = %{"value" => "batman"}

      response =
        conn
        |> post(Routes.accounts_path(conn, :deposit, account_id, params))
        |> json_response(:bad_request)

      expected_response =  %{"message" => "Invalid deposit value!"}

      assert response == expected_response
    end
  end

  describe "withdrawal/2" do
    setup %{conn: conn} do
      params = %{
        name: "Jennifer",
        password: "123456",
        nickname: "jenni",
        email: "jennifer@email.com",
        age: 27
      }

      {:ok, %User{account: %Account{id: account_id}}} = Chewiepay.create_user(params)

      conn = put_req_header(conn, "authorization", "Basic YWRtaW46YWRtaW4xMjM=")

      params = %{"value" => "10.00"}

      conn
        |> post(Routes.accounts_path(conn, :deposit, account_id, params))

      {:ok, conn: conn, account_id: account_id}
    end

    test "when all params are valid, make the withdrawal", %{conn: conn, account_id: account_id} do
      params = %{"value" => "10.00"}

      response =
        conn
        |> post(Routes.accounts_path(conn, :withdrawal, account_id, params))
        |> json_response(:ok)

      assert %{
                "account" => %{"balance" => "490.00", "id" => _id},
                "message" => "Balance updated sucessfully"
              } = response
    end

    test "when all params are invalid, returns an error", %{conn: conn, account_id: account_id} do
      params = %{"value" => "batman"}

      response =
        conn
        |> post(Routes.accounts_path(conn, :withdrawal, account_id, params))
        |> json_response(:bad_request)

      expected_response =  %{"message" => "Invalid deposit value!"}

      assert response == expected_response
    end
  end
end
