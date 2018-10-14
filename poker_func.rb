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
  blackcards_arr = []
  blackcards_arr = black_avail.pop(5)
  blackcards_arr
end

###### ###### This rearranges the cards in your hand from high to low before 
#### determining number and suits


def white_high_low(whitecards_arr)
    whitehigh_arr = white.sort { |x,y| y <=> x }
end

def black_high_low(blackcards_arr)
    blackhigh_arr = black.sort { |x,y| y <=> x }
end

#this converts the dealt white cards into a modified hand (white)
#adding 7 to all for an 8-through-59 deck

#ready for division into a card number and suit
#and limiting global variable

#8 will be 2 of Clubs, or 2 modulus 0
#59 will be 14 modulus 3, an Ace of Hearts.

def convert_white(whitehigh_arr)
    w = 0
    until whitehigh_arr[w] == nil
            whitehigh_arr[w] += 7
            w += 1
    end
    white_added = whitehigh_arr
    white_added
end

#this converts the dealt black cards into a modified hand (black)
#adding 7 to all for an 8-through-59 deck

#ready for division into a card number and suit
#and limiting global variable

#8 will be 2 of Clubs, or 2 modulus 0
#59 will be 14 modulus 3, an Ace of Hearts.

def convert_black(blackhigh_arr)
    w = 0
    until blackhigh_arr[w] == nil
            blackhigh_arr[w] += 7
            w += 1
    end
    black_added = blackhigh_arr
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
    w_high = white_number[0]
    w_high
end

def get_black_high(black_numbers)
    b_high = black_number[0]
    b_high
end

### Here is the test for one pair
def get_white_pair
    if (white[0] == white[1])  
        w_pair = "Pair of #{white[0]}s, #{white[2]} high."
    elsif (white[1] == white[2])  
        w_pair = "Pair of #{white[1]}s, #{white[0]} high."
    elsif (white[2] == white[3])  
        w_pair = "Pair of #{white[2]}s, #{white[0]} high."
    elsif (white[3] == white[4])  
        w_pair = "Pair of #{white[3]}s, #{white[0]} high."
    end
    w_pair
end

def get_black_pair
    if (black[0] == black[1])  
        b_pair = "Pair of #{black[0]}s, #{black[2]} high."
    elsif (white[1] == white[2])  
        b_pair = "Pair of #{black[1]}s, #{black[0]} high."
    elsif (white[2] == white[3])  
        b_pair = "Pair of #{black[2]}s, #{black[0]} high."
    elsif (white[3] == white[4])  
        b_pair = "Pair of #{black[3]}s, #{black[0]} high."
    end
    b_pair
end

## Here is the test for two pair

def white_two_pair
    if (white[0] == white[1]) && (white[2] == white[3])
        w_2pair = "Two pair, #{white[0]}s and #{white[2]}s, #{white[4]} kicker."
    elsif (white[0] == white[1]) && (white[3] == white[4])
        w_2pair = "Two pair, #{white[0]}s and #{white[3]}s, #{white[2]} kicker."
    elsif (white[1] == white[2]) && (white[3] == white[4])
        w_2pair = "Two pair, #{white[1]}s and #{white[3]}s, #{white[0]} kicker."
    end
end

def black_two_pair
    if (black[0] == black[1]) && (black[2] == black[3])
        w_2pair = "Two pair, #{black[0]}s and #{black[2]}s, #{black[4]} kicker."
    elsif (black[0] == black[1]) && (black[3] == black[4])
        w_2pair = "Two pair, #{black[0]}s and #{black[3]}s, #{black[2]} kicker."
    elsif (black[1] == black[2]) && (black[3] == black[4])
        w_2pair = "Two pair, #{black[1]}s and #{black[3]}s, #{black[0]} kicker."
    end
end

## Here is the test for three of a kind

