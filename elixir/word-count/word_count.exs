defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    sentence
    |> String.downcase
    |> String.replace(~r{[#,!@&\^$%:_]}, " ")
    |> String.split
    |> Enum.reduce(%{}, fn(item, acc) ->
      case acc do
        %{^item => a_val} ->
          Dict.put(acc, item, a_val + 1)
        _ ->
          put_in(acc, [item], 1)
      end
    end)
  end
end
