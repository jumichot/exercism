defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  #
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically imported) and so shouldn't be used either.

  @spec count(list) :: non_neg_integer

  def count(l) do
    _length(l)
  end

  defp _length([]), do: 0
  defp _length([head|tail]) do
    1 + _length(tail)
  end

  @spec reverse(list) :: list
  def reverse(l) do
    _reverse(l)
  end

  defp _reverse(head), do: _reverse(head,[])
  defp _reverse([], result), do: result
  defp _reverse([head|tail], result) do
    _reverse(tail, [head] ++ result)
  end


  @spec map(list, (any -> any)) :: list
  def map(l, f) do
    _map(l,f)
  end

  defp _map([], _func), do: []
  defp _map([head|tail], func) do
    [func.(head) | _map(tail, func)]
  end

  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter(l, f) do
    _filter(l,f)
  end

  defp _filter([], func), do: []

  # @type acc :: any
  # @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  # def reduce(l, acc, f) do

  # end

  # @spec append(list, list) :: list
  # def append(a, b) do

  # end

  # @spec concat([[any]]) :: [any]
  # def concat(ll) do

  # end
end
