defmodule Chewiepay do
  alias Chewiepay.Users.Create, as: UserCreate

  alias Chewiepay.Accounts.Deposit, as: AccountDeposit

  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: AccountDeposit, as: :call
end
