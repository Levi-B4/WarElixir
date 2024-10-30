orderedDeck = War.createCards()

War.createCards() |> Enum.each(&(IO.puts(War.cardToString(&1))))
