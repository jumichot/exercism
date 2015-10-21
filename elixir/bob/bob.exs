defmodule Teenager do
  def hey(input) do
    clean_input = String.strip(input)
    cond do
      all_caps?(input) ->
        "Whoa, chill out!"
      true ->
        "Whatever."
    end
  end

  defp all_caps?(input) do
    input === String.upcase(input)
  end
end
