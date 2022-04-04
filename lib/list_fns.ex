defmodule ListFns do
  @default_people [%{name: "Bob", age: 30}, %{name: "Bill", age: 18}]

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
end
