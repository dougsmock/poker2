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

#This pops into a 5-card whitecards_arr, a global variable
#leaves black_avail, the 47 cards available for blackcards_arr

def whitehand(newcard_arr)
  $whitecards_arr = []
  $whitecards_arr = shufcard_arr.pop(5)
  black_avail = shufcard_arr
  black_avail
end

#This pops into a 5-card blackcards_arr, a global variable

def blackhand(black_avail)
  $blackcards_arr = []
  $blackcards_arr = black_avail.pop(5)
  black_avail
end

#this converts the dealt white cards into a modified hand (white)
#adding 7 to all for an 8-through-59 deck

#ready for division into a card number and suit
#and limiting global variable

#8 will be 2 of Clubs, or 2 modulus 0
#59 will be 14 modulus 3, an Ace of Hearts.

def convert_white(whitecards_arr)
    w = 0
    until whitecards_arr[w] == nil
            whitecards_arr[w] += 7
            w += 1
    end
    white_added = whitecards_arr
    white_added
end

#this converts the dealt white cards into a modified hand (black)
#adding 7 to all for an 8-through-59 deck

#ready for division into a card number and suit
#and limiting global variable

#8 will be 2 of Clubs, or 2 modulus 0
#59 will be 14 modulus 3, an Ace of Hearts.

def convert_black(blackcards_arr)
    w = 0
    until blackcards_arr[w] == nil
            blackcards_arr[w] += 7
            w += 1
    end
    black_added = blackcards_arr
    black_added
end

# Now, we assign numbers to cards 
# (11, 12, 13, 14 will be renamed as late in the process as possible.)

def white_numbers(white_added)
    w = 0
    y = 0
    white_numbers = []
    until white_added[w] == nil
        white_numbers[y] = white_added[w] / 4
        w += 1
        y += 1
    end
    white_numbers
end

def black_numbers(black_added)
    b = 0
    c = 0
    black_numbers = []
    until black_added[b] == nil
        black_numbers[c] = black_added[w] / 4
        b += 1
        c += 1
    end
    black_numbers
end

#### These two functions will determine suits, using modulus

def white_suits(white_added)
	w = 0
	y = 0
	white_mod = []
	white_suits = []
	until white_added[w] == nil
		white_mod[y] = white_added[w] % 4
		if white_mod[y] == 0
			white_suits << "Clubs"
		elsif white_mod[y] == 1
			white_suits << "Spades"
		elsif white_mod[y] == 2
			white_suits << "Diamonds"
		elsif white_mod[y] == 3
			white_suits << "Hearts"
		else
			puts "Out of order"	
		end
		w += 1
        y += 1
    end
    white_suits
end    
    
def black_suits(black_added)
    w = 0
    y = 0
    black_mod = []
    black_suits = []
    until black_added[w] == nil
        black_mod[y] = black_added[w] % 4
        if black_mod[y] == 0
            black_suits << "Clubs"
        elsif black_mod[y] == 1
            black_suits << "Spades"
        elsif black_mod[y] == 2
            black_suits << "Diamonds"
        elsif black_mod[y] == 3
            black_suits << "Hearts"
        else
            puts "Out of order"	
        end
        w += 1
        y += 1
        black_suits
    end
end

######### We have white numbers and white suits, black numbers and black suits. 
###Let's test for the high card only.

def get_white_high(white_numbers)
    w_high = white_number.max
    w_high
end

def white_pair(white_numbers)
    temp_array = []
    5.times do
        temp_array << white.number.max
        p "White's temp array is #{temp_array}"
    end

end



# def get_white_pairs(white_numbers)

# end





#Order of hands
# 0 High card
# 1 Pair
# 2 Two pair
# 3 Trips
# 4 Straight
# 5 Flush
# 6 Full House
# 7 Four of a kind
# 8 Straight flush
# 9 Royal flush
# May need global variable to compare??
