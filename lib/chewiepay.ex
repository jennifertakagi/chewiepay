defmodule Chewiepay do
  alias Chewiepay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
