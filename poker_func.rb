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
  whitecards_arr = newcard_arr.pop(5)
  black_avail = newcard_arr
  return
  black_avail
  return
  whitecards_arr
end

def blackhand(black_avail)
  blackcards_arr = black_avail.pop(5)
  blackcards_arr
end

def convert_white(whitecards_arr)
    w = 0
    whitecards_arr.each do |w|
        until whitecards_arr[w] == nil
            whitecards_arr[w] += 7
            w += 1
        end
end

### test to see if this conversion to a card number works.


#     counter = 0
#     blackcards_arr.each do |b|
#         whitecards_arr[b] += 7
#         counter += 1
#     end

#     return
#         whitecards_arr, blackcards_arr
    
# end









#ADD 7 TO ALL cards, making 52 a 59.
#18 would be 2 of clubs, or 2 modulus 0
#59 would be 14 modulus 3, an Ace of Hearts.
