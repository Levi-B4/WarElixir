defmodule War do

  def simulateGame do
    deck = createCards()
    players = setupGame(deck)
  end

  #TODO: define this as a constant so you dont need to run it everytime
  defp createCards do
    suits = [:clubs, :diamonds, :hearts, :spades]
    faceValues = Enum.to_list(2..14)

    Enum.reduce(suits, [], fn (suit, cards) -> cards ++ Enum.map(faceValues, fn value -> [value, suit] end) end)
  end

  defp setupGame(deck) do
    playerHands = Enum.shuffle(deck) |> Enum.chunk_every(26)
    playerHands
  end

  defp cardToString(card) do
    [value, suit] = card

    value = cond do
      2 <= value and value <= 10 ->
        value
      value == 11 ->
        "Jack"
      value == 12 ->
        "Queen"
      value == 13 ->
        "King"
      value == 14 ->
        "Ace"
      true ->
        raise "card value not valid: #{value}"
    end

    "#{value} of #{suit}"
  end

end
