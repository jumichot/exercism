defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    words = String.split(sentence)
    result = Enum.reduce(words, %{}, fn(item, acc) ->
      put_in(acc, [item], 1)
    end)
  end
end
