# ListFns

## How to use?

1. Run `iex -S mix` in the folder's root.
2. Then, `ListFns.get_names_of_adults()` to get a list of names of default people.
3. Want your own `people`? No prob.

- First, define them: `people = [%{name: "Bob", age: 30}, %{name: "Bill", age: 18}, %{name: "Ben", age: 45}]`
- Then, run them through the fn, like so: ``ListFns.get_names_of_adults(people)`
