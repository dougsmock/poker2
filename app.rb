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
p w_sf
w_4 = white_four(wnumbs)
p w_4
w_full = white_full_house(wnumbs)
p w_full
w_flush = white_flush(wnumbs, wsuits)
p w_flush
w_straight = white_straight(wnumbs)
p w_straight
w_3 = white_three(wnumbs)
p w_3
w_2p = white_two_pair(wnumbs)
p w_2p
w_2 = white_pair(wnumbs)
p w_2
w_high = white_high(wnumbs)
p w_high

p "** black's hand rank **"
b_sf = black_straight_flush(bnumbs, bsuits)
p b_sf
b_4 = black_four(bnumbs)
p b_4
b_full = black_full_house(bnumbs)
p b_full
b_flush = black_flush(bnumbs, bsuits)
p b_flush
b_straight = black_straight(bnumbs)
p b_straight
b_3 = black_three(bnumbs)
p b_3
b_2p = black_two_pair(bnumbs)
p b_2p
b_2 = black_pair(bnumbs)
p b_2
b_high = black_high(bnumbs)
p b_high


w = ""
b = ""
wreport = white_report(w_sf, w_4, w_full, w_flush, w_straight, w_3, w_2p, w_2, w_high, w)
breport = black_report(b_sf, b_4, b_full, b_flush, b_straight, b_3, b_2p, b_2, b_high, b)
p wreport
p breport




" And the winner is ... "
















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




