defmodule FreelancerRates do
  @spec daily_rate(hourly_rate) :: float
        when hourly_rate: float
  def daily_rate(hourly_rate) do
    8.0 * hourly_rate
  end

  @spec apply_discount(before_discount, discount) :: float
        when before_discount: float, discount: float
  def apply_discount(before_discount, discount) do
    before_discount - before_discount / 100.0 * discount
  end

  @spec monthly_rate(hourly_rate, discount) :: integer
        when hourly_rate: float, discount: float
  def monthly_rate(hourly_rate, discount) do
    ceil(apply_discount(22 * daily_rate(hourly_rate), discount))
  end

  @spec days_in_budget(budget, hourly_rate, discount) :: float
        when budget: float, hourly_rate: float, discount: float
  def days_in_budget(budget, hourly_rate, discount) do
    Float.floor(budget / apply_discount(daily_rate(hourly_rate), discount), 1)
  end
end
