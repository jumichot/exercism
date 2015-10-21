defmodule Teenager do
  def hey(input) do
    clean_input = input
    # |> String.strip

    cond do
      all_caps?(clean_input) ->
        "Whoa, chill out!"
      question?(clean_input) ->
        "Sure."
      true ->
        "Whatever."
    end
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp all_caps?(input) do
    input === String.upcase(input)
  end
end
