defmodule Chewiepay.Users.Create do
  alias Chewiepay.{Repo, User}

  def call(params) do
    params
      |> User.changeset()
      |> Repo.insert()
  end
end
