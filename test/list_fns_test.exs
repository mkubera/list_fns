defmodule ListFnsTest do
  use ExUnit.Case
  doctest ListFns

  test "gets name 'Bob' out of list of people" do
    people = [%{name: "Bob", age: 30}, %{name: "Bill", age: 18}]
    assert ListFns.get_names_of_adults(people) == ["Bob"]
  end
end
