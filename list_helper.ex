defmodule ListHelper do
  # def sum ([]) do
  #   0
  # end

  # def sum([head | tail]) do
  #   head + sum(tail)
  # end

  def length(list), do: p_length(0, list)

  defp p_length(count, []) do
    count
  end

  defp p_length(count, [head | tail]) do
    count + 1
    |> p_length(tail)
  end

  def sum(list) do
    p_sum(0, list)
  end

  defp p_sum(current_sum, []) do
    current_sum
  end

  defp p_sum(current_sum, [head | tail]) do
    # new_sum = current_sum + head
    current_sum + head
    |> p_sum(tail)
  end
end
