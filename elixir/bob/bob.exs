defmodule Teenager do
  def hey(input) do
    clean_input = input
    |> String.strip

    cond do
      silent?(clean_input) ->
        "Fine. Be that way!"
      shooting?(clean_input) ->
        "Whoa, chill out!"
      question?(clean_input) ->
        "Sure."
      true ->
        "Whatever."
    end
  end

  defp silent?(input) do
    String.length(input) == 0
  end

  defp shooting?(input) do
    all_caps?(input)
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp all_caps?(input) do
    input === String.upcase(input)
  end
end
