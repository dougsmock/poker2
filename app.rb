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
p w_high

p "** black's hand rank **"
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
    p b_flush
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
if w_2p != nil
    p w_2p
end

b_2 = black_pair(bnumbs)
if b_2 != nil
    p b_2
end

b_high = black_high(bnumbs)
p b_high


w = ""
b = ""
wreport = white_report(w_sf, w_4, w_full, w_flush, w_straight, w_3, w_2p, w_2, w_high, w)
breport = black_report(b_sf, b_4, b_full, b_flush, b_straight, b_3, b_2p, b_2, b_high, b)


p " And the winner is ... "
winner = declare_winner(wreport, breport)
p winner
 















# a = ""
# b = ""
# c = ""
# d = ""
# e = ""
# f = ""
# g = ""
# h = ""
# i = ""
# j = ""


# puts "**Black hand ranking**"
# breport = black_report(a, b, c, d, e, f, g, h, i, j)
# puts breport




