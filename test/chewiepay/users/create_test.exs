defmodule Chewiepay.Users.CreateTeste do
  use Chewiepay.DataCase

  alias Chewiepay.User
  alias Chewiepay.Users.Create

  describe "call/1" do
    test "when all params are valid, returns an user" do
      params = %{
        name: "Jennifer",
        password: "123456",
        nickname: "jenni",
        email: "jennifer@email.com",
        age: 27
      }

      {:ok, %User{id: user_id}} = Create.call(params)
      user = Repo.get(User, user_id)

      assert %User{name: "Jennifer", age: 27, id: ^user_id} = user
    end

    test "when all params are invalid, returns an erroe" do
      params = %{
        name: "Jennifer",
        nickname: "jenni",
        email: "jennifer@email.com",
        age: 10
      }

      {:error, changeset} = Create.call(params)

      expected_response = %{
        age: ["must be greater than or equal to 18"],
        password: ["can't be blank"]
      }

      assert errors_on(changeset) == expected_response
    end
  end
end
