defmodule Teenager do
  def hey(input) do
    cond do
      question?(input) ->
        "Whatever."
    end
  end

  defp question?(input) do
    true
  end
end
