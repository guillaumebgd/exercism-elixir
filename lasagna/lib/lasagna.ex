defmodule Lasagna do
  @spec expected_minutes_in_oven :: integer
  def expected_minutes_in_oven do
    40
  end

  @spec remaining_minutes_in_oven(minutes) :: integer when minutes: integer
  def remaining_minutes_in_oven(minutes) do
    if minutes > expected_minutes_in_oven() do
      0
    else
      expected_minutes_in_oven() - minutes
    end
  end

  @spec preparation_time_in_minutes(nb_layers) :: integer when nb_layers: integer
  def preparation_time_in_minutes(nb_layers) do
    2 * nb_layers
  end

  @spec total_time_in_minutes(nb_layers, time_in_oven) :: integer
        when nb_layers: integer, time_in_oven: integer
  def total_time_in_minutes(nb_layers, time_in_oven) do
    preparation_time_in_minutes(nb_layers) + time_in_oven
  end

  @spec alarm :: String.t()
  def alarm do
    "Ding!"
  end
end
