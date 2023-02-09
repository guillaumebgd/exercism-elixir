defmodule HighSchoolSweetheart do
  @spec first_letter(binary) :: nil | binary
  def first_letter(name) do
    name
    |> String.trim()
    |> String.at(0)
  end

  @spec initial(binary) :: nonempty_binary
  def initial(name) do
    case first_letter(name) do
      nil -> ""
      letter -> letter |> String.upcase() |> Kernel.<>(".")
    end
  end

  @spec initials(binary) :: binary
  def initials(full_name) do
    case String.split(full_name, " ") do
      [] -> ""
      [first_name, last_name] -> initial(first_name) <> " " <> initial(last_name)
      [first_name] -> initial(first_name)
    end
  end

  @spec pair(binary, binary) :: <<_::64, _::_*8>>
  def pair(full_name1, full_name2) do
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
