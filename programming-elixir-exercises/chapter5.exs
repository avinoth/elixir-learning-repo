# list-concat

list_concat = fn (list1, list2) -> list1 ++ list2 end
IO.puts list_concat.([1, 2, 3], [4, 5, 6])

# Sum function

sum = fn (a, b, c) -> a + b + c end
IO.puts sum.(20, 30, 40)

# Tuple to list function

pair_tuple_to_list = fn (tup1) -> Tuple.to_list(tup1) end
IO.puts pair_tuple_to_list.({21, 22, 23})

# Functions-2  FizzBuzz without conditionals

fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (a, b, c) -> c
end
IO.puts fizz_buzz.(1, 0, 20)

# Functios-3 Asserting FizzBuzz

fizz_buzz_validator = fn (n) ->
  fizz_buzz.(rem(n, 3), rem(n, 5), n)
end
IO.puts fizz_buzz_validator.(15)

# Functions-4 Nested functions

prefix = fn (str1) ->
  fn (str2) ->
    "#{str1} #{str2}"
  end
end
mrs = prefix.("Mrs")
IO.puts mrs.("Smith")

IO.puts prefix.("Elixir").("Rocks")

# Functions-5 Shorthand functions

IO.puts Enum.map [1, 2, 3, 4], &(&1 + 2)
IO.puts Enum.each [1, 2, 3, 4], &(IO.inspect(&1))
