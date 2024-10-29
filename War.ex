defmodule War do
  def createCards do
    suits = [:clubs, :diamonds, :hearts, :spades]
    faceValues = [A] ++ Enum.to_list(2..10) ++ [J, Q, K]

    Enum.reduce(suits, [], fn (suit, cards) -> cards ++ Enum.map(faceValues, fn value -> {suit, value} end) end)
  end
end
