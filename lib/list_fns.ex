defmodule ListFns do
  @moduledoc """
  Documentation for ListFns.
  """

  @default_people [
    %{name: "Bob", age: 30},
    %{name: "Bill", age: 18},
    %{name: "John", age: 12},
    %{name: "Bruce", age: 21}
  ]

  @doc """

  """
  def count_adults(people \\ @default_people) do
    Enum.reduce(people, 0, fn person, acc ->
      case is_adult?(person) do
        true -> acc + 1
        false -> acc
      end
    end)
  end

  @doc """

  """
  def how_long(people \\ @default_people, chosen_name \\ "Bill") do
    person = get_person(people, chosen_name)
    case is_adult?(person) do
      true -> say_response("adult", person)
      false -> say_response("kid", person)
    end
  end

  @doc false
  def get_person(people, chosen_name), do: Enum.find(people, fn %{name: name} -> name == chosen_name end)

  # TODO! :D
  # CRUD 💪

  @doc false
  def add_person(people, data) do

  end
  @doc false
  def edit_person(people, data) do

  end
  @doc false
  def delete_person(people, data) do

  end


  defp is_adult?(%{age: age}), do: age >= 21
  defp say_response("adult", %{name: name}), do: "#{name} is already an adult."
  defp say_response("kid", %{name: name, age: age}), do: "#{name} has #{21 - age} years left to adulthood."

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
