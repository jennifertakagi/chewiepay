defmodule Chewiepay do
  alias Chewiepay.Users.Create, as: UserCreate

  alias Chewiepay.Accounts.{Deposit, Withdrawal, Transaction}

  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call

  defdelegate withdrawal(params), to: Withdrawal, as: :call

  defdelegate transaction(params), to: Transaction, as: :call
end
