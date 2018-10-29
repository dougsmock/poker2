require_relative 'poker_func.rb'
# require 'sinatra'

# enable :sessions

deck = cards()
# p deck

shuffled = shuffle(deck)
# p shuffled

dealt = deal_hands(shuffled)
# p dealt

whitehand = whitehand(dealt)
# p whitehand
blackhand = blackhand(dealt)
# p blackhand

whighlow = white_high_low(whitehand)
# p whighlow
bhighlow = black_high_low(blackhand)
# p bhighlow

wconverted = convert_white(whighlow)
bconverted = convert_black(bhighlow)
# p wconverted
# p bconverted

wnumbs = white_numbers(wconverted)
bnumbs = black_numbers(bconverted)
p wnumbs
p bnumbs

wsuits = white_suits(wconverted)
bsuits = black_suits(bconverted)
p wsuits
p bsuits

wdisplay = whitehand_display(wnumbs, wsuits)
bdisplay = blackhand_display(bnumbs, bsuits)
p wdisplay
p bdisplay

p "** white's hand rank **"
p ""
w_sf = white_straight_flush(wnumbs, wsuits)
if w_sf != nil && winner_w != true
    handrank_w = 2
    p handrank_w
    p w_sf
    winner_w = true
end

w_4 = white_four(wnumbs)
if w_4 != nil && winner_w != true
    handrank_w = 3
    p handrank_w
    p w_4
    winner_w = true
end

w_full = white_full_house(wnumbs)
if w_full != nil && winner_w != true
    handrank_w = 4
    p handrank_w
    p w_full
    winner_w = true
end

w_flush = white_flush(wnumbs, wsuits)
if w_flush != nil && winner_w != true
    handrank_w = 5
    p handrank_w
    p w_flush
    winner_w = true
end

w_straight = white_straight(wnumbs)
if w_straight != nil && winner_w != true
    handrank_w = 6
    p handrank_w
    p w_straight
    winner_w = true
end

w_3 = white_three(wnumbs)
if w_3 != nil && winner_w != true
    handrank_w = 7
    p handrank_w
    p w_3
    winner_w = true
end

w_2p = white_two_pair(wnumbs)
if w_2p != nil && winner_w != true
    handrank_w = 8
    p handrank_w
    p w_2p
    winner_w = true
end

w_2 = white_pair(wnumbs)
if w_2 != nil && winner_w != true
    handrank_w = 9
    p handrank_w
    p w_2
    winner_w = true
end

w_high = white_high(wnumbs)
if w_high != nil && winner_w != true
    handrank_w = 10
    p handrank_w
    p w_high
end

p "** black's hand rank **"
p ""
b_sf = black_straight_flush(bnumbs, bsuits)
if b_sf != nil && winner_b != true
    handrank_b = 2
    p handrank_b
    p b_sf
    winner_b = true
end

b_4 = black_four(bnumbs)
if b_4 != nil && winner_b != true
    handrank_b = 3
    p handrank_b
    p b_4
    winner_b = true
end

b_full = black_full_house(bnumbs)
if b_full != nil && winner_b != true
    handrank_b = 4
    p handrank_b
    p b_full
    winner_b = true
end

b_flush = black_flush(bnumbs, bsuits)
if b_flush != nil && winner_b != true
    handrank_b = 5
    p handrank_b
    p b_flush
    winner_b = true
end

b_straight = black_straight(bnumbs)
if b_straight != nil && winner_b != true
    handrank_b = 6
    p handrank_b
    p b_straight
    winner_b = true
end

b_3 = black_three(bnumbs)
if b_3 != nil && winner_b != true
    handrank_b = 7
    p handrank_b
    p b_3
    winner_b = true
end

b_2p = black_two_pair(bnumbs)
if b_2p != nil && winner_b != true
    handrank_b = 8
    p handrank_b
    p b_2p
    winner_b = true
end

b_2 = black_pair(bnumbs)
if b_2 != nil && winner_b != true
    handrank_b = 9
    p handrank_b
    p b_2
    winner_b = true
end

b_high = black_high(bnumbs)
if b_high != nil && winner_b != true
    handrank_b = 10
    p handrank_b
    p b_high
end

winner = declare_winner(handrank_w, handrank_b)

if (handrank_w == 10 && handrank_b == 10) || (handrank_w == 5 && handrank_b == 5) || (handrank_w == 4 && handrank_b == 4) || (handrank_w == 2 && handrank_b == 2) || (handrank_w == 1 && handrank_b == 1) 
    tiebreaker = tie_high(wnumbs, bnumbs)
elsif (handrank_w == 9 && handrank_b == 9)
    tiebreaker = tie_pair(wnumbs, bnumbs)
elsif (handrank_w == 8 && handrank_b == 8)
    tiebreaker = tie_2pair(wnumbs, bnumbs)
end