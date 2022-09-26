defmodule GuessingGame do
  def compare(secret_number, guess \\ :no_guess)

  @spec compare(secret_number, guess) :: String.t()
        when secret_number: integer(), guess: integer()
  def compare(secret_number, guess)
      when is_integer(secret_number) and is_integer(guess) and secret_number == guess,
      do: "Correct"

  @spec compare(secret_number, guess) :: String.t()
        when secret_number: integer(), guess: integer()
  def compare(secret_number, guess)
      when is_integer(secret_number) and is_integer(guess) and secret_number + 1 == guess,
      do: "So close"

  @spec compare(secret_number, guess) :: String.t()
        when secret_number: integer(), guess: integer()
  def compare(secret_number, guess)
      when is_integer(secret_number) and is_integer(guess) and secret_number - 1 == guess,
      do: "So close"

  @spec compare(secret_number, guess) :: String.t()
        when secret_number: integer(), guess: integer()
  def compare(secret_number, guess)
      when is_integer(secret_number) and is_integer(guess) and guess > secret_number,
      do: "Too high"

  @spec compare(secret_number, guess) :: String.t()
        when secret_number: integer(), guess: integer()
  def compare(secret_number, guess)
      when is_integer(secret_number) and is_integer(guess) and guess < secret_number,
      do: "Too low"

  def compare(_secret_number, _guess) do
    "Make a guess"
  end
end
