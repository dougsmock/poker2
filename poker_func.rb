# This is a deck of cards, numbered 1 through 52, and then shuffled.

def cards()
    card_arr = [*1..52]
    shufcard_arr = card_arr.shuffle
    p shufcard_arr
    shufcard_arr
end

#This pops into a 5-card whitecards_arr, then pops into blackcards_arr
#Then shovels two hands into a single array to pass as one

def deal_hands(shufcard_arr)
  whitecards_arr = []
  whitecards_arr = shufcard_arr.pop(5)
  black_avail = shufcard_arr
  blackcards_arr = black_avail.pop(5)
  bothhands = []
  bothhands << whitecards_arr << blackcards_arr
  bothhands
end

######## THE FOLLOWING WILL STEP ASIDE FOR HARD-CODED HANDS ######
# This splits that array into the 5-card whitehand
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
########## END OF COMMENTED OUT CODE

### FOLLOWING IS HARD-CODING FOR TESTING HIGH HANDS

def whitehand(bothhands)
    whitehand = [48, 47, 35, 21, 14]
    whitehand
end

def blackhand(bothhands)
    blackhand = [46, 45, 34, 20, 13]
    blackhand
end

##### end of hard coding

###### ###### This rearranges the cards in your hand from high to low

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
# (10, 11, 12, 13, 14 will be renamed T, J, Q, K, A on the front end.)

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
        end
        w += 1
        y += 1
    end
    black_suits
end

######### We have white numbers and white suits, black numbers and black suits. 
###Let's test for the high card only, both sides

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
    x = 0
    until x == 4
        if white[x] == white[x + 1]
            w_pair = "Pair of #{white[x]}s."
        end
        x += 1
    end
    w_pair
end

def black_pair(black_numbers)
    black = black_numbers
    x = 0
    until x == 4
        if black[x] == black[x + 1]
            b_pair = "Pair of #{black[x]}s."
        end
        x += 1
    end
    b_pair
end

## Here is the test for two pair

def white_two_pair(white_numbers)
    white = white_numbers
    if ((white[0] == white[1]) && (white[2] == white[3])) || ((white[0] == white[1]) && (white[3] == white[4])) || ((white[1] == white[2]) && (white[3] == white[4]))
        w_2pair = "Two pair."
    end
    w_2pair
end

def black_two_pair(black_numbers)
    black = black_numbers
    if ((black[0] == black[1]) && (black[2] == black[3])) || ((black[0] == black[1]) && (black[3] == black[4])) || ((black[1] == black[2]) && (black[3] == black[4]))
        b_2pair = "Two pair."
    end
    b_2pair
end

## Here is the test for three of a kind

def white_three(white_numbers)
    white = white_numbers
    if ((white[0] == white[1]) && (white[0] == white[2])) || ((white[1] == white[2]) && (white[1] == white[3])) || ((white[2] == white[3]) && (white[2] == white[4]))
        w_3s = "Three of a kind."
    end
    w_3s
end

def black_three(black_numbers)
    black = black_numbers
    if ((black[0] == black[1]) && (black[0] == black[2])) || ((black[1] == black[2]) && (black[1] == black[3])) || ((black[2] == black[3]) && (black[2] == black[4]))
        b_3s = "Three of a kind."
    end
    b_3s
end

# NOW, TESTS FOR straights, flushes, straight flushes.

def white_royal_flush(white_numbers, white_suits)
    w_rf = false
    w_sf = false
    if ((white_numbers[0] == 14) && (white_numbers[1] == 13) && (white_numbers[2] == 12) && (white_numbers[3] == 11) && (white_numbers[4] == 10)) && ((white_suits[0] == white_suits[1]) && (white_suits[1] == white_suits[2]) && (white_suits[2] == white_suits[3]) && (white_suits[3] == white_suits[4]))
        w_rf = "ROYAL FLUSH!"
    end
end

def white_straight_flush(white_numbers, white_suits)
    if ((white_numbers[0] == white_numbers[1] + 1) && (white_numbers[1] == white_numbers[2] + 1) && (white_numbers[2] == white_numbers[3] + 1) && (white_numbers[3] == white_numbers[4] + 1)) && ((white_suits[0] == white_suits[1]) && (white_suits[1] == white_suits[2]) && (white_suits[2] == white_suits[3]) && (white_suits[3] == white_suits[4])) && white_numbers[0] != 14
        w_sf = "Straight flush, #{white_numbers[0]} high."
    end
end

def white_straight(white_numbers, white_suits)
    if (white_numbers[0] == white_numbers[1] + 1) && (white_numbers[1] == white_numbers[2] + 1) && (white_numbers[2] == white_numbers[3] + 1) && (white_numbers[3] == white_numbers[4] + 1)
        w_straight = "Straight, #{white_numbers[0]} high."
    elsif (white_numbers[0] == 14) && (white_numbers[1] == 5) && (white_numbers[2] == 4) && (white_numbers[3] == 3) && (white_numbers[4] == 2)
        w_straight = "Straight, 5 high."
    end
end

def white_flush(white_numbers, white_suits)
    if (white_suits[0] == white_suits[1]) && (white_suits[1] == white_suits[2]) && (white_suits[2] == white_suits[3]) && (white_suits[3] == white_suits[4]) && ((white_numbers[0] != white_numbers[1] + 1) || (white_numbers[1] != white_numbers[2] + 1) || (white_numbers[2] != white_numbers[3] + 1) || (white_numbers[3] != white_numbers[4] + 1))
        w_flush = "Flush, #{white_numbers[0]} high."
    end
end

##### BELOW will be black's straights and flushes, which will mirror that of white hand.

def black_royal_flush(black_numbers, black_suits)
    if ((black_numbers[0] == 14) && (black_numbers[1] == 13) && (black_numbers[2] == 12) && (black_numbers[3] == 11) && (black_numbers[4] == 10)) && ((black_suits[0] == black_suits[1]) && (black_suits[1] == black_suits[2]) && (black_suits[2] == black_suits[3]) && (black_suits[3] == black_suits[4]))
        b_rf = "ROYAL FLUSH!"
    end
end

def black_straight_flush(black_numbers, black_suits)
    if ((black_numbers[0] == black_numbers[1] + 1) && (black_numbers[1] == black_numbers[2] + 1) && (black_numbers[2] == black_numbers[3] + 1) && (black_numbers[3] == black_numbers[4] + 1)) && ((black_suits[0] == black_suits[1]) && (black_suits[1] == black_suits[2]) && (black_suits[2] == black_suits[3]) && (black_suits[3] == black_suits[4])) && black_numbers[0] != 14
        b_sf = "Straight flush, #{black_numbers[0]} high."
    end
end

def black_straight(black_numbers, black_suits)
    if (black_numbers[0] == black_numbers[1] + 1) && (black_numbers[1] == black_numbers[2] + 1) && (black_numbers[2] == black_numbers[3] + 1) && (black_numbers[3] == black_numbers[4] + 1)
        b_straight = "Straight, #{black_numbers[0]} high."
    elsif (black_numbers[0] == 14) && (black_numbers[1] == 5) && (black_numbers[2] == 4) && (black_numbers[3] == 3) && (black_numbers[4] == 2)
        b_straight = "Straight, 5 high."
    end
end

def black_flush(black_numbers, black_suits)
    if (black_suits[0] == black_suits[1]) && (black_suits[1] == black_suits[2]) && (black_suits[2] == black_suits[3]) && (black_suits[3] == black_suits[4]) && ((black_numbers[0] != black_numbers[1] + 1) || (black_numbers[1] != black_numbers[2] + 1) || (black_numbers[2] != black_numbers[3] + 1) || (black_numbers[3] != black_numbers[4] + 1))
        b_flush = "Flush, #{black_numbers[0]} high."
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

# Create display of each hand with numbers and suits
def whitehand_display(white_numbers, white_suits)
    x = 0
    puts "White hand"
    5.times do
        puts "#{white_numbers[x]} of #{white_suits[x]}"
        x += 1
    end
end

def blackhand_display(black_numbers, black_suits)
    x = 0
    puts "Black hand"
    5.times do
        puts "#{black_numbers[x]} of #{black_suits[x]}"
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

######### Breaking a tiebreaker with high card, flush, full house, straight flush

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
        end
        x += 1
    end
    if broke_tie == false
        p "DEAD TIE!"
    end
end

## tiebreaker for pair (a monster), UNDER RECONSTRUCTION

def tie_pair(white_numbers, black_numbers)
    broke_tie = false
    white_paircards = []
    white_kickers = []

    if white_numbers[0] == white_numbers[1]
        white_paircards << white_numbers[0] << white_numbers[1]
        white_kickers << white_numbers[2] << white_numbers[3] << white_numbers[4]
    elsif white_numbers[1] == white_numbers[2]
        white_paircards << white_numbers[1] << white_numbers[2]
        white_kickers << white_numbers[0] << white_numbers[3] << white_numbers[4]
    elsif white_numbers[2] == white_numbers[3]
        white_paircards << white_numbers[2] << white_numbers[3]
        white_kickers << white_numbers[0] << white_numbers[1] << white_numbers[4]
    else white_numbers[3] == white_numbers[4]
        white_paircards << white_numbers[3] << white_numbers[4]
        white_kickers << white_numbers[0] << white_numbers[1] << white_numbers[2]
    end 
    
    black_paircards = []
    black_kickers = []
    if black_numbers[0] == black_numbers[1]
        black_paircards << black_numbers[0] << black_numbers[1]
        black_kickers << black_numbers[2] << black_numbers[3] << black_numbers[4]
    elsif black_numbers[1] == black_numbers[2]
        black_paircards << black_numbers[1] << black_numbers[2]
        black_kickers << black_numbers[0] << black_numbers[3] << black_numbers[4]
    elsif black_numbers[2] == black_numbers[3]
        black_paircards << black_numbers[2] << black_numbers[3]
        black_kickers << black_numbers[0] << black_numbers[1] << black_numbers[4]
    else black_numbers[3] == black_numbers[4]
        black_paircards << black_numbers[3] << black_numbers[4]
        black_kickers << black_numbers[0] << black_numbers[1] << black_numbers[2]
    end 
        
    if white_paircards[0] > black_paircards[0]
        p "WHITE WINS!"
        broke_tie = true
        return white_numbers
    elsif white_paircards[0] < black_paircards[0]
        p "BLACK WINS!"
        broke_tie = true
        return black_numbers
    end  

    z = 0
    while z < 3
        if white_kickers[z] > black_kickers[z]
            p "WHITE WINS!"
            broke_tie = true
            return white_numbers
        elsif white_kickers[z] < black_kickers[z]
            p "BLACK WINS!"
            broke_tie = true
            return black_numbers
        end
        z += 1
    end

    if broke_tie == false
        p "DEAD TIE!"
    end
end

## tiebreaker for 2 pairs (another monster)

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
    else white3 < black3
        p "BLACK WINS!"
        broke_tie = true
    end
end

##### Let's work on the fours
    
def tie_4(white_numbers, black_numbers)
    broke_tie = false
    if white_numbers[0] == white_numbers[1]
        white4 = white_numbers[0]
    elsif white_numbers[1] == white_numbers[2]
        white4 = white_numbers[1]
    end

    if black_numbers[0] == black_numbers[1]
        black4 = black_numbers[0]
    elsif black_numbers[1] == black_numbers[2]
        black4 = black_numbers[1]
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