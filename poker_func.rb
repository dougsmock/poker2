### working out flush, looking at straight flush for guidance.



# This is a deck of cards, numbered 1 through 52.

def cards
    card_arr = [*1..52]
    card_arr
end

## this shuffles the cards
    
def shuffle(card_arr)
    shufcard_arr = card_arr.shuffle
    shufcard_arr
end

#This pops into a 5-card whitecards_arr, then pops into blackcards_arr
#Then shovels two hands into array to pass as one

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

# ######## THIS WILL STEP ASIDE FOR HARD-CODED HANDS ######
# # This splits that array into a 5-card whitehand
# def whitehand(bothhands)
#     whitehand = bothhands.shift(1)
#     whitehand = whitehand[0]
#     whitehand
# end

# # This recreates the 5-card blackhand
# def blackhand(bothhands)
#     blackhand = bothhands[0]
#     blackhand
# end
# ########## END OF COMMENTED OUT CODE

#### HARD-CODING IS HERE

def whitehand(bothhands)
    whitehand = [8, 7, 6, 3, 2]
    whitehand
end

def blackhand(bothhands)
    blackhand = [46, 43, 39, 35, 31]
    blackhand
end

###### end of hard coding

###### ###### This rearranges the cards in your hand from high to low before 
#### determining number and suits

def white_high_low(whitehand)
    whitehigh = whitehand.sort { |x,y| y <=> x }
    whitehigh
end

def black_high_low(blackhand)
    blackhigh = blackhand.sort { |x,y| y <=> x }
    blackhigh
end

#this converts the dealt white cards into a modified hand (white)
#adding 7 to all for an 8-through-59 deck

#ready for division into a card number and suit
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
# (10, 11, 12, 13, 14 will be renamed T, J, Q, K as late in the process as possible.)

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
        black_numbers[c] = black_added[b] / 4
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
			p "Out of order"	
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
            p "Out of order"	
        end
        w += 1
        y += 1
    end
    black_suits
end

######### We have white numbers and white suits, black numbers and black suits. 
###Let's test for the high card only.

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
    white = white_numbers
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
    black = black_numbers
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
    white = white_numbers
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
    black = black_numbers
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
    white = white_numbers
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
    black = black_numbers
    if (black[0] == black[1]) && (black[0] == black[2])
        b_3s = "Three of a kind, #{black[0]}s."
    elsif (black[1] == black[2]) && (black[1] == black[3])
        b_3s ="Three of a kind, #{black[1]}s."
    elsif (black[2] == black[3]) && (black[2] == black[4])
        b_3s ="Three of a kind, #{black[2]}s."
    end
    b_3s
end

## Here are the tests for strights

def white_straight(white_numbers)
    white = white_numbers
    if (white[0] - 1 == white[1]) && (white[1] - 1 == white[2]) && (white[2] - 1 == white[3]) && (white[3] - 1 == white[4])
        w_straight = "Straight, #{white[0]} high."
    elsif (white[0] == 14) && (white[1] == 5) && (white[2] == 4) && (white[3] == 3) && (white[4] == 2)
        w_straight = "Straight, 5 high."
    end
    w_straight
end

def black_straight(black_numbers)
    black = black_numbers
    if (black[0] - 1 == black[1]) && (black[1] - 1 == black[2]) && (black[2] - 1 == black[3]) && (black[3] - 1 == black[4])
        b_straight = "Straight, #{black[0]} high."
    elsif (black[0] == 14) && (black[1] == 5) && (black[2] == 4) && (black[3] == 3) && (black[4] == 2)
        b_straight = "Straight, 5 high."
    end
    b_straight
end

#### Testing for flushes
def white_flush(white_suits, white_numbers)
    if ((white_suits[0] == white_suits[1]) && (white_suits[1] == white_suits[2]) && (white_suits[2] == white_suits[3]) && (white_suits[3] == white_suits[4])) && w_straight == false
        w_flush = true
        p "Flush, #{white_numbers[0]} high."
    end
    w_flush
end

# NOW, A BLACK TEST FOR straight flushes, flushes, straights.

def black_straight_flush(black_suits, black_numbers)
    b_flush = false
    b_straight = false
    b_sf = false
    b_rf = false
    
    if ((black_suits[0] == black_suits[1]) && (black_suits[0] == black_suits[2]) && (black_suits[0] == black_suits[3]) && (black_suits[0] == black_suits[4]))
        b_flush = true

        if ((black_numbers[0] - 1) == black_numbers[1]) && ((black_numbers[1] - 1) == black_numbers[2]) && ((black_numbers[2] - 1) == black_numbers[3]) && ((black_numbers[3] - 1) == black_numbers[4])
            b_straight = true
        elsif (black_numbers[0] == 14) && (black_numbers[1] == 5) && (black_numbers[2] == 4) && (black_numbers[3] == 3) && (black_numbers[4] == 2)
            b_straight = true
        end
    end

    if b_flush == true && b_straight == true && black_numbers[0] == 14 && black_numbers[1] == 13
        p "ROYAL FLUSH!"
        return b_rf = true
    elsif b_flush == true && b_straight == true 
        p "Stright flush, #{black_numbers[0]} high."
        return b_sf = true
    end

    if flush == true && straight == false
        p "Flush, #{black_numbers[0]}."
        return b_flush = true
    end

    if flush == false && straight == true
        p "Straight, #{black_numbers[0]}."
        return b_straight = true
    end
end

## Here is the test for full house

def white_full_house(white_numbers)
    white = white_numbers
    if ((white[0] == white[1]) && (white[0] == white[2])) && (white[3] == white[4])
        w_full = "Full house, #{white[0]} over #{white[3]}."
    elsif (white[0] == white[1]) && ((white[2] == white[3]) && (white[2] == white[4]))
        w_full = "Full house, #{white[2]} over #{white[0]}."
    end
    w_full
end

def black_full_house(black_numbers)
    black = black_numbers
    if ((black[0] == black[1]) && (black[0] == black[2])) && (black[3] == black[4])
        b_full = "Full house, #{black[0]} over #{black[3]}."
    elsif (black[0] == black[1]) && ((black[2] == black[3]) && (black[2] == black[4]))
        b_full = "Full house, #{black[2]} over #{black[0]}."
    end
    b_full
end

## Here is the test for four of a kind

def white_four(white_numbers)
    white = white_numbers
    if (white[0] == white[1]) && (white[0] == white[2]) && (white[0] == white[3])
        w_4s = "Four of a kind, #{white[0]}s."
    elsif (white[1] == white[2]) && (white[1] == white[3]) && (white[1] == white[4])
        w_4s = "Four of a kind, #{white[1]}s."
    end
    w_4s
end

def black_four(black_numbers)
    black = black_numbers
    if (black[0] == black[1]) && (black[0] == black[2]) && (black[0] == black[3])
        b_4s = "Four of a kind, #{black[0]}s."
    elsif (black[1] == black[2]) && (black[1] == black[3]) && (black[1] == black[4])
        b_4s = "Four of a kind, #{black[1]}s."
    end
    b_4s
end

## The test for straight flush
## AND FLUSH?

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
        if white_numbers[0] == 14 && white_numbers[1] == 13
            w_sf = "ROYAL FLUSH!"
        elsif white_numbers[0] == 14 && white_numbers[1] == 5
            w_sf = "Straight flush, 5 high."
        else
            w_sf = "Straight flush, #{white_numbers[0]} high."
        end
    end

    if (flush == true) && (straight == false)
        return w_flush = "Flush, #{white_numbers[0]} high."
    end
end

def black_straight_flush(black_numbers, black_suits) 
    flush = false
    straight = false
    if (black_suits[0] == black_suits[1]) && (black_suits[0] == black_suits[2]) && (black_suits[0] == black_suits[3]) && (black_suits[0] == black_suits[4])
        flush = true
    end
    
    if (black_numbers[0] - 1 == black_numbers[1]) && (black_numbers[1] - 1 == black_numbers[2]) && (black_numbers[2] - 1 == black_numbers[3]) && (black_numbers[3] - 1 == black_numbers[4])
        straight = true
    end
    
    if (black_numbers[0] == 14) && (black_numbers[1] == 5) && (black_numbers[2] == 4) && (black_numbers[3] == 3) && (black_numbers[4] == 2)
        straight = true
    end

    if (flush == true) && (straight == true)
        if black_numbers[0] == 14 && black_numbers[1] == 13
            return b_rf = "ROYAL FLUSH!"
        else
            return b_sf = "Straight flush, #{black_numbers[0]} high."
        end
    end

    if (flush == true) && (straight == false)
        return b_flush = "Flush, #{black_numbers[0]} high."
    end

    if (flush == false) && (straight == true)
        return b_straight = "Straight, #{black_numbers[0]} high."
    end
end

# Create display of each hand with numbers and suits
def whitehand_display(white_numbers, white_suits)
    x = 0
    p "White hand"
    5.times do
        p "#{white_numbers[x]} of #{white_suits[x]}"
        x += 1
    end
end

def blackhand_display(black_numbers, black_suits)
    x = 0
    p "Black hand"
    5.times do
        p "#{black_numbers[x]} of #{black_suits[x]}"
        x += 1
    end
end

################ We start to declare a winner here, based on card level

def declare_winner(handrank_w, handrank_b)
    if handrank_w < handrank_b
        p "WHITE WINS!"
    elsif handrank_w > handrank_b
        p "BLACK WINS!"
    end
end

################ Breaking a tiebreaker with high card, flush, full house, straight flush

def tie_high(white_numbers, black_numbers)
    x = 0
    broke_tie = false
    while x < 5
        if white_numbers[x] > black_numbers[x]
            p "WHITE WINS!"
            broke_tie = true
            return white_numbers
        elsif white_numbers[x] < black_numbers[x]
            p "BLACK WINS!"
            broke_tie = true
            return black_numbers
        else white_numbers[x] == black_numbers[x]
            x += 1
        end
    end
    if broke_tie == false
        p "DEAD TIE!"
    end
end

## tiebreaker for pair (a monster)

def tie_pair(white_numbers, black_numbers)
    broke_tie = false

    white_paircards = []
    if white_numbers[0] == white_numbers[1]
        white_paircards << white_numbers[0] << white_numbers[1]
    elsif white_numbers[1] == white_numbers[2]
        white_paircards << white_numbers[1] << white_numbers[2]
    elsif white_numbers[2] == white_numbers[3]
        white_paircards << white_numbers[2] << white_numbers[3]
    else white_numbers[3] == white_numbers[4]
        white_paircards << white_numbers[3] << white_numbers[4]
    end 

    black_paircards = []
    if black_numbers[0] == black_numbers[1]
        black_paircards << black_numbers[0] << black_numbers[1]
    elsif black_numbers[1] == black_numbers[2]
        black_paircards << black_numbers[1] << black_numbers[2]
    elsif black_numbers[2] == black_numbers[3]
        black_paircards << black_numbers[2] << black_numbers[3]
    else black_numbers[3] == black_numbers[4]
        black_paircards << black_numbers[3] << black_numbers[4]
    end 
    
    x = 0

    if white_paircards[0] > black_paircards[0]
        p "WHITE WINS!"
        broke_tie = true
        return white_numbers
    elsif white_paircards[0] < black_paircards[0]
        p "BLACK WINS!"
        broke_tie = true
        return black_numbers
        while x < 3
            if white_numbers[x] > black_numbers[x]
                p "WHITE WINS!"
                broke_tie = true
                return white_numbers
            elsif white_numbers[x] < black_numbers[x]
                p "BLACK WINS!"
                broke_tie = true
                return black_numbers
            end
        end
    end  
       
    if broke_tie == false
        p "DEAD TIE!"
    end
end

## tiebreaker for 2 pairs 

def tie_2pair(white_numbers, black_numbers)
    broke_tie = false

    white_kicker = 0
    if (white_numbers[0] == white_numbers[1]) && (white_numbers[2] == white_numbers[3])
        white_firstp = white_numbers[0]
        white_secondp = white_numbers[2]
        white_kicker = white_numbers[4]
    elsif (white_numbers[0] == white_numbers[1]) && (white_numbers[3] == white_numbers[4])
        white_firstp = white_numbers[0]
        white_secondp = white_numbers[3]
        white_kicker = white_numbers[2]
    elsif (white_numbers[1] == white_numbers[2]) && (white_numbers[3] == white_numbers[4])
        white_firstp = white_numbers[1]
        white_secondp = white_numbers[3]
        white_kicker = white_numbers[0]
    end

    black_kicker = 0
    if (black_numbers[0] == black_numbers[1]) && (black_numbers[2] == black_numbers[3])
        black_firstp = black_numbers[0]
        black_secondp = black_numbers[2]
        black_kicker = black_numbers[4]
    elsif (black_numbers[0] == black_numbers[1]) && (black_numbers[3] == black_numbers[4])
        black_firstp = black_numbers[0]
        black_secondp = black_numbers[3]
        black_kicker = black_numbers[2]
    elsif (black_numbers[1] == black_numbers[2]) && (black_numbers[3] == black_numbers[4])
        black_firstp = black_numbers[1]
        black_secondp = black_numbers[3]
        black_kicker = black_numbers[0]
    end

    if white_firstp > black_firstp
        p "WHITE WINS!"
        broketie = true
        return white_numbers
    elsif white_firstp < black_firstp
        p "BLACK WINS!"
        broketie = true
        return black_numbers
    elsif white_secondp > black_secondp
        p "WHITE WINS!"
        broketie = true
        return white_numbers
    elsif white_secondp < black_secondp
        p "BLACK WINS!"
        broketie = true
        return black_numbers
    elsif white_kicker > black_kicker
        p "WHITE WINS!"
        broketie = true
        return white_numbers
    elsif white_kicker < black_kicker
        p "BLACK WINS!"
        broketie = true
        return black_numbers
    else
        if broke_tie == false
            p "DEAD TIE!"
        end
    end
end

####### Now we set up to compare three of a kind, if needed 

def tie_3(white_numbers, black_numbers)
    broke_tie = false
    white3 = 0
    if white_numbers[0] == white_numbers[1]
        white3 = white_numbers[0]
    elsif white_numbers[1] == white_numbers[2]
        white3 = white_numbers[1]
    elsif white_numbers[2] == white_numbers[3]
        white3 = white_numbers[2]
    end

    black_extras = []
    black3 = 0
    if black_numbers[0] == black_numbers[1]
        black3 = black_numbers[0]
    elsif black_numbers[1] == black_numbers[2]
        black3 = black_numbers[1]
    elsif black_numbers[2] == black_numbers[3]
        black3 = black_numbers[2]
    end

    #### compare the threes

    if white3 > black3
        p "WHITE WINS!"
        broke_tie = true
        return white_numbers
    else white3 < black3
        p "BLACK WINS!"
        broke_tie = true
        return black_numbers
    end
end

    ##### Let's work on the fours
    
def tie_4(white_numbers, black_numbers)
    broke_tie = false
    if white_numbers[0] == white_numbers[1]
        white4 = white_numbers[0]
    elsif white_numbers[1] == white_numbers[2]
        white_4 = white_numbers[1]
    end

    if black_numbers[0] == black_numbers[1]
        black4 = black_numbers[0]
    elsif black_numbers[1] == black_numbers[2]
        black_4 = black_numbers[1]
    end

        ##### Time to compare, break the tie

    if white4 > black4
        p "WHITE WINS!"
        broke_tie = true
        return white_numbers
    else white4 < black4
        p "BLACK WINS!"
        broke_tie = true
        return black_numbers
    end
end

## Breaking a full house tiebreaker

def tie_full(white_numbers, black_numbers)
    white_3part = 0
    broke_tie = false
    if (white_numbers[0] == white_numbers[1]) && (white_numbers[1] == white_numbers[2])
        white_3part = white_numbers[0]
    else white_numbers[0] != white_numbers[2]
        white_3part = white_numbers[2]
    end

    black_3part = 0
    if (black_numbers[0] == black_numbers[1]) && (black_numbers[1] == black_numbers[2])
        black_3part = black_numbers[0]
    else black_numbers[0] != black_numbers[2]
        black_3part = black_numbers[2]
    end

            ### Now, it's time to compare and break that tie.

    if white_3part > black_3part
        p "WHITE WINS!"
        broke_tie = true
        return white_numbers
    else white_3part < black_3part
        p "BLACK WINS!"
        broke_tie = true
        return black_numbers
    end
end

                #### Now, the straight with that ace exception
def tie_straight(white_numbers, black_numbers)
    white_strhigh = 0
    black_strhigh = 0
    broke_tie = false
    if white_numbers[0] == 14 && white_numbers[1] == 5
        white_strhigh = 5
    else white_strhigh = white_numbers[0]
    end 
    
    if black_numbers[0] == 14 && black_numbers[1] == 5
        black_strhigh = 5
    else black_strhigh = black_numbers[0]
    end  

        ## compare the highs
    if white_strhigh > black_strhigh
        p "WHITE WINS!"
        broke_tie = true
        return white_numbers
    elsif white_strhigh < black_strhigh
        p "BLACK WINS!"
        broke_tie = true
        return black_numbers
    else white_strhigh == black_strhigh
        p "DEAD TIE."
    end
end