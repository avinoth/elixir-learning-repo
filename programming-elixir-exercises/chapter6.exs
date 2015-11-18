# Modules intro

defmodule Times do
  def double(n), do: n * 2

  def triple(n), do: n * 3

  def quadrapule(n), do: double(n) * 2
end

# Modules and Functions

defmodule Sum do
  def of(0), do: 0

  def of(n),  do: n + of(n-1)
end

defmodule Gcd do
  def of(x, 0), do: x

  def of(x, y), do: of(y, rem(x, y))
end
