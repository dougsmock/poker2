#This is a deck of cards, numbered 1 through 52.

def cards()
    card_arr = [*1..52]
    card_arr
end

#This shuffles the cards

def shuffle(card_arr)
    shufcard_arr = card_arr.shuffle
    shufcard_arr
end

#This pops into whitecards_arr, a global variable
#leaves black_avail, the 47 cards available for blackcards_arr

def whitehand(newcard_arr)
  $whitecards_arr = []
  $whitecards_arr = shufcard_arr.pop(5)
  black_avail = shufcard_arr
  black_avail
end

#This pops into blackcards_arr, a global variable

def blackhand(black_avail)
  $blackcards_arr = []
  $blackcards_arr = black_avail.pop(5)
  $blackcards_arr
end

#this converts the dealt white cards into a modified hand (white)
#ready for division into a card number and suit
#and limiting global variable

def convert_white($whitecards_arr)
    w = 0
    $whitecards_arr.each do |w|
        until $whitecards_arr[w] == nil
            $whitecards_arr[w] += 7
            w += 1
        end
    white = $whitecards_arr
    white
end

#this converts the dealt white cards into a modified hand (black)
#ready for division into a card number and suit
#and limiting global variable

def convert_black($blackcards_arr)
    w = 0
    $blackcards_arr.each do |w|
        until $blackcards_arr[w] == nil
            $blackcards_arr[w] += 7
            w += 1
        end
    black = $blackcards_arr
    black
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
