defmodule BirdCount do
  @spec today([Integer.t()]) :: Integer.t() | nil
  def today([]) do
    nil
  end

  def today([head | _]) do
    head
  end

  @spec increment_day_count([Integer.t()]) :: [Integer.t()]
  def increment_day_count([]) do
    [1]
  end

  def increment_day_count([head | tail]) do
    [head + 1 | tail]
  end

  @spec has_day_without_birds?([Integer.t()]) :: boolean
  def has_day_without_birds?([]) do
    false
  end

  def has_day_without_birds?([0 | _]) do
    true
  end

  def has_day_without_birds?([_ | tail]) do
    has_day_without_birds?(tail)
  end

  @spec total([Integer.t()]) :: Integer.t()
  def total([]) do
    0
  end

  def total([head | tail]) do
    head + total(tail)
  end

  @spec busy_days([Integer.t()]) :: Integer.t()
  def busy_days([]) do
    0
  end

  def busy_days([head | tail]) do
    case head do
      _ when head >= 5 -> 1 + busy_days(tail)
      _ -> busy_days(tail)
    end
  end
end
