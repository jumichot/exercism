defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  #
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically imported) and so shouldn't be used either.

  @spec count(list) :: non_neg_integer

  def count(l) do
    # _length(l)
    _reduce(l,0, fn(_,acc) -> 1 + acc  end)
  end

  defp _length([]), do: 0
  defp _length([_|tail]) do
    1 + _length(tail)
  end

  @spec reverse(list) :: list
  def reverse(l) do
    # _reverse(l)
    _reduce(l, [], fn(l, acc) -> [l|acc] end)
  end

  # defp _reverse(head), do: _reverse(head,[])
  # defp _reverse([], result), do: result
  # defp _reverse([head|tail], result) do
  #   _reverse(tail, [head|result])
  # end


  @spec map(list, (any -> any)) :: list
  def map(l, f) do
    # _map(l,f)
    l
    |> _reduce([], &([f.(&1) | &2]))
    |> reverse
  end

  # defp _map([], _func), do: []
  # defp _map([head|tail], func) do
  #   [func.(head) | _map(tail, func)]
  # end

  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter(l, f) do
    # _filter(l,f)
    _reduce(l,[], fn(h,acc) ->
      cond do
        f.(h) -> [h|acc]
        true -> acc
      end
    end) |> reverse
  end

  # defp _filter([], func), do: []
  # defp _filter([head|tail], func) do
  #   cond do
  #     func.(head) ->
  #       [head | _filter(tail, func)]
  #     true ->
  #       _filter(tail, func)
  #   end
  # end

  @type acc :: any
  @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  def reduce(l, acc, f) do
    _reduce(l, acc, f)
  end

  defp _reduce([], acc, _), do: acc
  defp _reduce([head|tail], acc, f) do
    _reduce(tail, f.(head,acc), f)
  end

  @spec append(list, list) :: list
  def append(a, b) do
    _append(a,b)
  end


  defp _append([],[]), do: []
  defp _append([], b), do: b
  defp _append(a, []), do: a
  defp _append(a,b) do
  end



  # @spec concat([[any]]) :: [any]
  # def concat(ll) do

  # end
end
  # def flatten([]), do: []
  # def flatten([head | tail]) do
  #   [flatten(head) ++ flatten(tail)]
  # end
  # def flatten(head), do: [head]

  # def flatten([]), do: []
  # def flatten([head]) when not is_list(head), do: [head]
  # def flatten([head|tail]) do
  #   flatten(head) ++ flatten(tail)
  # end
