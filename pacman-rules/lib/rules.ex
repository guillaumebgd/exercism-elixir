defmodule Rules do
  @spec eat_ghost?(power_pellet_active, touching_ghost) :: boolean
        when power_pellet_active: boolean, touching_ghost: boolean
  def eat_ghost?(power_pellet_active, touching_ghost) do
    power_pellet_active and touching_ghost
  end

  @spec score?(touching_power_pellet, touching_dot) :: boolean
        when touching_power_pellet: boolean, touching_dot: boolean
  def score?(touching_power_pellet, touching_dot) do
    touching_power_pellet or touching_dot
  end

  @spec lose?(power_pellet_active, touching_ghost) :: boolean
        when power_pellet_active: boolean, touching_ghost: boolean
  def lose?(power_pellet_active, touching_ghost) do
    not power_pellet_active and touching_ghost
  end

  @spec win?(has_eaten_all_dots, power_pellet_active, touching_ghost) :: boolean
        when has_eaten_all_dots: boolean, power_pellet_active: boolean, touching_ghost: boolean
  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    has_eaten_all_dots and not lose?(power_pellet_active, touching_ghost)
  end
end
