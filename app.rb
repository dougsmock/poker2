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
if w_sf != nil
    p w_sf
end

w_4 = white_four(wnumbs)
if w_4 != nil
    p w_4
end

w_full = white_full_house(wnumbs)
if w_full != nil
    p w_full
end

w_flush = white_flush(wnumbs, wsuits)
if w_flush != nil
    p w_flush
end

w_straight = white_straight(wnumbs)
if w_straight != nil
    p w_straight
end

w_3 = white_three(wnumbs)
if w_3 != nil
    p w_3
end

w_2p = white_two_pair(wnumbs)
if w_2p != nil
    p w_2p
end

w_2 = white_pair(wnumbs)
if w_2 != nil
    p w_2
end

w_high = white_high(wnumbs)
if w_high != nil
    p w_high
end

p ""
p "** black's hand rank **"
p ""
b_sf = black_straight_flush(bnumbs, bsuits)
if b_sf != nil
    p b_sf
end

b_4 = black_four(bnumbs)
if b_4 != nil
    p b_4
end

b_full = black_full_house(bnumbs)
if b_full != nil   
    p b_full
end

b_flush = black_flush(bnumbs, bsuits)
if b_flush != nil
    p w_blush
end

b_straight = black_straight(bnumbs)
if b_straight != nil
    p b_straight
end

b_3 = black_three(bnumbs)
if b_3 != nil
    p b_3
end

b_2p = black_two_pair(bnumbs)
if b_2p != nil
    p b_2p
    bhand = 2
    p bhand
end

b_2 = black_pair(bnumbs)
if b_2 != nil
    p b_2
end

b_high = black_high(bnumbs)
if b_high != nil
    p b_high
else
    p "Out of order."
end






