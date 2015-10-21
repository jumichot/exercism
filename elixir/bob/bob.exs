defmodule Teenager do
  def hey(input) do
    clean_input = input |> String.strip

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
    MyString.empty?(input)
  end

  defp shooting?(input) do
    MyString.all_word_character_caps?(input)
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end
end

defmodule MyString do
  def empty?(input) do
    input == ""
  end

  def all_word_character_caps?(input) do
    clean_input = String.replace(input, ~r{\W|\d}, "")
    clean_input === String.upcase(clean_input) && !empty?(clean_input)
  end
end
