def cards()
    card_arr = [*1..52]
    card_arr
end

def shuffle(card_arr)
    newcard_arr = card_arr.shuffle
    newcard_arr
end

def whitehand(newcard_arr)
  whitecards_arr = []
  whitecards_arr << newcard_arr.pop(5)
  whitecards_arr
end







#1 would be 2 of clubs, or 2 modulus 0
#ADD 7 TO ALL cards, making 52 a 59.
#59 would be 14 modulus 3, an Ace of Hearts.
