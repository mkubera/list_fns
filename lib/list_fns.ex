defmodule ListFns do
  @default_people [
    %{name: "Bob", age: 30},
    %{name: "Bill", age: 18},
    %{name: "John", age: 12},
    %{name: "Bruce", age: 21}
  ]

  # @default_people [%{name: "Bob", age: 30}, %{name: "Bill", age: 18}, %{name: "John", age: 12}]

  @moduledoc """
  Documentation for ListFns.
  """

  @doc """
  Get names of adults who are older than 21.
  Requires a list of maps with age and name keys.

  ## Examples

      iex> ListFns.get_names_of_adults([%{name: "Bob", age: 30}, %{name: "Bill", age: 18}])
      ["Bob"]

  """
  def get_names_of_adults(people \\ @default_people) do
    people
    |> Enum.filter(fn %{age: age} -> age > 21 end)
    |> Enum.map(fn %{name: name} -> name end)
  end

  def how_long_until_adult(people \\ @default_people, chosen_name) do
    people
    |> Enum.filter(fn %{name: name} -> name == chosen_name end)
    |> Enum.map(fn %{age: age, name: name} ->
      cond do
        age - 21 >= 0 -> "#{name} is #{age} years old, and is already an adult"
        age - 21 < 0 -> "#{name} has #{21 - age} years until adulthood"
      end
    end)
  end
end
