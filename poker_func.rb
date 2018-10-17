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

#This pops into a 5-card whitecards_arr, then pops into blackcards_arr
#Then combines two hands into array to pass as one

def deal_hands(shufcard_arr)
  whitecards_arr = []
  whitecards_arr = shufcard_arr.pop(5)
  black_avail = shufcard_arr
  blackcards_arr = black_avail.pop(5)
  bothhands = []
  bothhands << whitecards_arr
  bothhands << blackcards_arr
  bothhands
end

#This splits out into a 5-card whitehand
def whitehand(bothhands)
    whitehand = bothhands.shift(1)
    whitehand
end

#This recreates the 5-card blackhand
def blackhand(bothhands)
    blackhand = bothhands[0]
    blackhand
end

###### ###### This rearranges the cards in your hand from high to low before 
#### determining number and suits

def white_high_low(whitehand)
    whitehigh = whitehand.sort { |x,y| y <=> x }
    whitehigh
end

def black_high_low(blackhand)
    black = blackhand.sort { |x,y| y <=> x }
    blackhigh
end

#this converts the dealt white cards into a modified hand (white)
#adding 7 to all for an 8-through-59 deck

#ready for division into a card number and suit
#and limiting global variable

#8 will be 2 of Clubs, or 2 modulus 0
#59 will be 14 modulus 3, an Ace of Hearts.

def convert_white(whitehigh)
    w = 0
    until whitehigh[w] == nil
            whitehigh[w] += 7
            w += 1
    end
    white_added = whitehigh
    white_added
end

#this converts the dealt black cards into a modified hand (black)
#adding 7 to all for an 8-through-59 deck

#ready for division into a card number and suit
#and limiting global variable

#8 will be 2 of Clubs, or 2 modulus 0
#59 will be 14 modulus 3, an Ace of Hearts.

def convert_black(blackhigh)
    w = 0
    until blackhigh[w] == nil
            blackhigh[w] += 7
            w += 1
    end
    black_added = blackhigh
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
## REEXAMINE THIS ONE.

def white_high(white_numbers)
    w_high = "High card, #{white_numbers}."
    w_high
end

def black_high(black_numbers)
    b_high = "High card, #{black_numbers}."
    b_high
end

### Here is the test for one pair
def white_pair(white_numbers)
    if (white[0] == white[1])  
        w_pair = "Pair of #{white[0]}s, #{white[2]}, #{white[3]}, #{white[4]} high."
    elsif (white[1] == white[2])  
        w_pair = "Pair of #{white[1]}s, #{white[0]}, #{white[3]}, #{white[4]} high."
    elsif (white[2] == white[3])  
        w_pair = "Pair of #{white[2]}s, #{white[0]}, #{white[1]}, #{white[4]} high."
    elsif (white[3] == white[4])  
        w_pair = "Pair of #{white[3]}s, #{white[0]}, #{white[1]}, #{white[2]} high."
    end
    w_pair
end

def black_pair(black_numbers)
    if (black[0] == black[1])  
        b_pair = "Pair of #{black[0]}s, #{black[2]}, #{black[3]}, #{black[4]} high."
    elsif (black[1] == black[2])  
        b_pair = "Pair of #{black[1]}s, #{black[0]}, #{black[3]}, #{black[4]} high."
    elsif (black[2] == black[3])  
        b_pair = "Pair of #{black[2]}s, #{black[0]}, #{black[1]}, #{black[4]} high."
    elsif (black[3] == black[4])  
        b_pair = "Pair of #{black[3]}s, #{black[0]}, #{black[1]}, #{black[2]} high."
    end
    b_pair
end

## Here is the test for two pair

def white_two_pair(white_numbers)
    if (white[0] == white[1]) && (white[2] == white[3])
        w_2pair = "Two pair, #{white[0]}s and #{white[2]}s, #{white[4]} kicker."
    elsif (white[0] == white[1]) && (white[3] == white[4])
        w_2pair = "Two pair, #{white[0]}s and #{white[3]}s, #{white[2]} kicker."
    elsif (white[1] == white[2]) && (white[3] == white[4])
        w_2pair = "Two pair, #{white[1]}s and #{white[3]}s, #{white[0]} kicker."
    end
    w_2pair
end

def black_two_pair(black_numbers)
    if (black[0] == black[1]) && (black[2] == black[3])
        b_2pair = "Two pair, #{black[0]}s and #{black[2]}s, #{black[4]} kicker."
    elsif (black[0] == black[1]) && (black[3] == black[4])
        b_2pair = "Two pair, #{black[0]}s and #{black[3]}s, #{black[2]} kicker."
    elsif (black[1] == black[2]) && (black[3] == black[4])
        b_2pair = "Two pair, #{black[1]}s and #{black[3]}s, #{black[0]} kicker."
    end
    b_2pair
end

## Here is the test for three of a kind

def white_three(white_numbers)
    if (white[0] == white[1]) && (white[0] == white[2])
        w_3s = "Three of a kind, #{white[0]}s."
    elsif (white[1] == white[2]) && (white[1] == white[3])
        w_3s = "Three of a kind, #{white[1]}s."
    elsif (white[2] == white[3]) && (white[2] == white[4])
        w_3s = "Three of a kind, #{white[2]}s."
    end
    w_3s
end

def black_three(black_numbers)
    if (black[0] == black[1]) && (black[0] == black[2])
        b_3s = "Three of a kind, #{black[0]}s."
    elsif (black[1] == black[2]) && (black[1] == black[3])
        b_3s ="Three of a kind, #{black[1]}s."
    elsif (black[2] == black[3]) && (black[2] == black[4])
        b_3s ="Three of a kind, #{black[2]}s."
    end
    b_3s
end

## Here is the tests for strights

def white_straight(white_numbers)
    if (white[0] - 1 == white[1]) && (white[1] - 1 == white[2]) && (white[2] - 1 == white[3]) && (white[3] - 1 == white[4])
        w_straight = "Straight, #{white[0]} high."
    elsif (white[0] == 14) && (white[1] == 5) && (white[2] == 4) && (white[3] == 3) && (white[4] == 2)
        w_straight = "Straight, 5 high."
    end
    w_straight
end

def black_straight(black_numbers)
    if (black[0] - 1 == black[1]) && (black[1] - 1 == black[2]) && (black[2] - 1 == black[3]) && (black[3] - 1 == black[4])
        b_straight = "Straight, #{black[0]} high."
    elsif (black[0] == 14) && (black[1] == 5) && (black[2] == 4) && (black[3] == 3) && (black[4] == 2)
        b_straight = "Straight, 5 high."
    end
    b_straight
end

#### Testing for flushes
def white_flush(white_suits, white_numbers)
    if (white_suits[0] == white_suits[1]) && (white_suits[1] == white_suits[2]) && (white_suits[2] == white_suits[3]) && (white_suits[3] == white_suits[4])
        w_flush = "Flush, #{white_numbers[0]} high."
    end
    w_flush
end

def black_flush(black_suits, black_numbers)
    if (black_suits[0] == black_suits[1]) && (black_suits[1] == black_suits[2]) && (black_suits[2] == black_suits[3]) && (black_suits[3] == black_suits[4])
        b_flush = "Flush, #{black_numbers[0]} high."
    end
    b_flush
end

## Here is the test for full house

def white_full_house(white_numbers)
    if ((white[0] == white[1]) && (white[0] == white[2])) && (white[3] == white[4])
        w_full = "Full house, #{white[0]} over #{white[3]}."
    elsif (white[0] == white[1]) && ((white[2] == white[3]) && (white[2] == white[4]))
        w_full = "Full house, #{white[2]} over #{white[0]}."
    end
    w_full
end

def black_full_house(black_numbers)
    if ((black[0] == black[1]) && (black[0] == black[2])) && (black[3] == black[4])
        b_full = "Full house, #{black[0]} over #{black[3]}."
    elsif (black[0] == black[1]) && ((black[2] == black[3]) && (black[2] == black[4]))
        b_full = "Full house, #{black[2]} over #{black[0]}."
    end
    b_full
end

## Here is the test for four of a kind

def white_four(white_numbers)
    if (white[0] == white[1]) && (white[0] == white[2]) && (white[0] == white[3])
        w_4s = "Four of a kind, #{white[0]}s."
    elsif (white[1] == white[2]) && (white[1] == white[3]) && (white[1] == white[4])
        w_4s = "Four of a kind, #{white[1]}s."
    end
    w_4s
end

def black_four(black_numbers)
    if (black[0] == black[1]) && (black[0] == black[2]) && (black[0] == black[3])
        b_4s = "Four of a kind, #{black[0]}s."
    elsif (black[1] == black[2]) && (black[1] == black[3]) && (black[1] == black[4])
        b_4s = "Four of a kind, #{black[1]}s."
    end
    b_4s
end

## The test for straight flush

def white_straight_flush(white_numbers, white_suits) 
    flush = false
    straight = false
    if (white_suits[0] == white_suits[1]) && (white_suits[0] == white_suits[2]) && (white_suits[0] == white_suits[3]) && (white_suits[0] == white_suits[4])
        flush = true
    end

    if ((white_numbers[0] - 1) == white_numbers[1]) && ((white_numbers[1] - 1) == white_numbers[2]) && ((white_numbers[2] - 1) == white_numbers[3]) && ((white_numbers[3] - 1) == white_numbers[4])
        straight = true
    end

    if (white_numbers[0] == 14) && (white_numbers[1] == 5) && (white_numbers[2] == 4) && (white_numbers[3] == 3) && (white_numbers[4] == 2)
        straight = true
    end

    if (flush == true) && (straight == true)
        if white_numbers[0] == 14
            w_sf = "Straight flush, 5 high."
        else
            w_sf = "Straight flush, #{white_numbers[0]} high."
        end
    end
end

def black_straight_flush(black_numbers, black_suits) 
    flush = false
    straight = false
    if (black_suits[0] == black_suits[1]) && (black_suits[0] == black_suits[2]) && (black_suits[0] == black_suits[3]) && (black_suits[0] == black_suits[4])
        flush = true
    end
    
    if ((black_numbers[0] - 1) == black_numbers[1]) && ((black_numbers[1] - 1) == black_numbers[2]) && ((black_numbers[2] - 1) == black_numbers[3]) && ((black_numbers[3] - 1) == black_numbers[4])
        straight = true
    end
    
    if (black_numbers[0] == 14) && (black_numbers[1] == 5) && (black_numbers[2] == 4) && (black_numbers[3] == 3) && (black_numbers[4] == 2)
        straight = true
    end
    
    if (flush == true) && (straight == true)
        if black_numbers[0] == 14
            b_sf = "Straight flush, 5 high."
        else
            v_sf = "Straight flush, #{black_numbers[0]} high."
        end
    end
end

# Create display of each hand with numbers and suits
def whitehand_display(white_numbers, white_suits)
    x = 0
    5.times each do
        p "#{white_numbers[x]} of #{white_suits[x]}"
        x += 1
    end
end

def blackhand_display(black_numbers, black_suits)
    x = 0
    5.times each do
        p "#{black_numbers[x]} of #{black_suits[x]}"
        x += 1
    end
end

## report for screen

def white_report(w_high, w_pair, w_2pair, w_3s, w_straight, w_flush, w_full, w_4s, w_sf)
    p w_high
    p w_pair
    p w_2pair
    p w_3s
    p w_straight
    p w_flush
    p w_full
    p w_4s
    p w_sf
end

def black_report(b_high, b_pair, b_2pair, b_3s, b_straight, b_flush, b_full, b_4s, b_sf)
    p b_high
    p b_pair
    p b_2pair
    p b_3s
    p b_straight
    p b_flush
    p b_full
    p b_4s
    p b_sf
end





