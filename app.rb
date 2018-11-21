require_relative 'poker_func.rb'
require_relative 'second.rb'
require 'sinatra'

enable :sessions

get '/' do
    deck = session[:deck]
    dealt = session[:dealt]
    whitehand = session[:whitehand]
    blackhand = session[:blackhand]
    whighlow = session[:whighlow]
    bhighlow = session[:bhighlow]
    wconverted = session[:wconverted]
    bconverted = session[:bconverted]
    white_numbers = session[:white_numbers]
    white_suits = session[:white_suits]
    black_numbers = session[:black_numbers]
    black_suits = session[:black_suits]

    # wnumbs = session[:wnumbs]
    # bnumbs = session[:bnumbs]
    # wsuits = session[:wsuits]
    # bsuits = session[:bsuits]
    wdisplay = session[:wdisplay]
    bdisplay = session[:bdisplay]
    
    w_rf = session[:w_rf]
    w_sf = session[:w_sf]
    w_4 = session[:w_4]
    w_full = session[:w_full]
    w_flush = session[:w_flush]
    w_straight = session[:w_straight]
    w_3 = session[:w_3]
    w_2p = session[:w_2p]
    w_2 = session[:w_2]
    w_pair = session[w_pair]
    w_high = session[:w_high]
    
    handrank_w = session[:handrank_w]
    winner_w = session[:winner_w]
        
    handrank_b = session[:handrank_b]
    winner_b = session[:winner_b]

    b_rf = session[:b_rf]
    b_sf = session[:b_sf]
    b_4 = session[:b_4]
    b_full = session[:b_full]
    b_flush = session[:b_flush]
    b_straight = session[:b_straight]
    b_3 = session[:b_3]
    b_2p = session[:b_2p]
    b_2 = session[:b_2]
    b_pair = session[b_pair]
    b_high = session[:b_high]
    load 'second.rb'

    # erb :twohands
    erb :twohands, :layout => :layout, locals:{deck: deck, dealt: dealt, whitehand: whitehand, blackhand: blackhand, whighlow: whighlow, bhighlow: bhighlow, wconverted: wconverted, bconverted: bconverted, white_numbers: white_numbers, black_numbers: black_numbers, white_suits: white_suits, black_suits: black_suits, wdisplay: wdisplay, bdisplay: bdisplay, w_rf: w_rf, w_sf: w_sf, w_4: w_4, w_full: w_full, w_flush: w_flush, w_straight: w_straight, w_3: w_3, w_2p: w_2p, w_pair: w_pair, w_high: w_high, b_rf: b_rf, b_sf: b_sf, b_4: b_4, b_full: b_full, b_flush: b_flush, b_straight: b_straight, b_3: b_3, b_2p: b_2p, b_pair: b_pair, b_high: b_high} 
end

post '/play' do
    session[:deck] = params[:deck]
    session[:dealt] = params[:dealt]
    session[:shuffled] = params[:shuffled]
    session[:whitehand] = params[:blackhand]
    session[:whighlow] = params[:whighlow]
    session[:bhighlow] = params[:bhighlow]
    session[:wconverted] = params[:wconverted]
    session[:bconverted] = params[:bconverted]
    session[white_numbers] = params[:white_numbers]
    session[white_suits] = params[:white_suits]
    session[black_numbers] = params[:black_numbers]
    session[black_suits] = params[:black_suits]


    # session[:wnumbs] = params[:wnumbs]
    # session[:bnumbs] = params[:bnumbs]
    # session[:wsuits] = params[:wsuits]
    # session[:bsuits] = params[:bsuits]
    session[:wdisplay] = params[:wdisplay]
    session[:bdisplay] = params[:bdisplay]
    
    session[:w_rf] = params[:w_rf]
    session[:w_sf] = params[:w_sf]
    session[:w_4] = params[:w_4]
    session[:w_full] = params[:w_full]
    session[:w_flush] = params[:w_flush]
    session[:w_3] = params[:w_3]
    session[:w_2p] = params[:w_2p]
    session[:w_2] = params[:w_2]
    session[:w_high] = params[:w_high]
    
    session[:handrank_w] = params[:handrank_w]
    session[:winner_w] = params[:winner_w]
        
    session[:handrank_b] = params[:handrank_b]
    session[:winner_b] = params[:winner_b]

    session[:b_rf] = params[:b_rf]
    session[:b_sf] = params[:b_sf]
    session[:b_4] = params[:b_4]
    session[:b_full] = params[:b_full]
    session[:b_flush] = params[:b_flush]
    session[:b_3] = params[:b_3]
    session[:b_2p] = params[:b_2p]
    session[:b_2] = params[:b_2]
    session[:b_high] = params[:b_high]
    redirect '/'
  end




#   require 'sinatra'
# require_relative 'poker.rb'
# # require_relative 'pairs.rb'
# enable :sessions

# get '/' do
# white = session[:$white]
# black = session[:$black]
# cards = session[:cards]
# deck = session[:deck]
# white_score = session[:$w_score]
# black_score = session[:$b_score]
# white_high_card = session[:$white_high_card]
# black_high_card = session[:$black_high_card]
# white_rank_1 = session[:$white_rank_1]
# black_rank_1 = session[:$black_rank_1]
# white_rank = session[:$white_rank]
# black_rank = session[:$black_rank]
# white_hand = session[:$white_hand]
# black_hand = session[:$black_hand]
# white_temp = session[:white_temp]
# black_temp = session[:black_temp]
# removematch = session[:removematch]
# white_high_card_compare = session[:white_high_card_compare]
# black_high_card_compare = session[:black_high_card_compare]

# load 'poker.rb'



# erb :index, :layout => :layout, locals: {white: $white, black: $black, cards: cards, deck: deck, white_score: $w_score, black_score: $b_score, black_high_card: $black_high_card, white_high_card: $white_high_card, white_rank_1: $white_rank_1, black_rank_1: $black_rank_1, white_rank: $white_rank, black_rank: $black_rank, white_hand: $white_hand, black_hand: $black_hand, white_temp: white_temp, black_temp: black_temp,white_high_card_compare: white_high_card_compare, black_high_card_compare: black_high_card_compare, removematch: removematch } 
# end

# get '/index' do

# white = session[:$white]
# black = session[:$black]
# cards = session[:cards]
# deck = session[:deck]
# white_score = session[:$w_score]
# black_score = session[:$b_score]
# white_high_card = session[:$white_high_card]
# black_high_card = session[:$black_high_card]
# white_rank_1 = session[:$white_rank_1]
# black_rank_1 = session[:$black_rank_1]
# white_rank = session[:$white_rank]
# black_rank = session[:$black_rank]
# white_hand = session[:$white_hand]
# black_hand = session[:$black_hand]
# white_temp = session[:white_temp]
# black_temp = session[:black_temp]
# removematch = session[:removematch]
# white_high_card_compare = session[:white_high_card_compare]
# black_high_card_compare = session[:black_high_card_compare]
# load 'poker.rb'



# erb :index, :layout => :layout, locals: {white: $white, black: $black, cards: cards, deck: deck, white_score: $w_score, black_score: $b_score, black_high_card: $black_high_card, white_high_card: $white_high_card, white_rank_1: $white_rank_1, black_rank_1: $black_rank_1, white_rank: $white_rank, black_rank: $black_rank, white_hand: $white_hand, black_hand: $black_hand, white_temp: white_temp, black_temp: black_temp,white_high_card_compare: white_high_card_compare, black_high_card_compare: black_high_card_compare, removematch: removematch } 
# end

# post '/load' do
# session[:white] = white
# session[:black] = black
# session[:deck] = deck
# session[:black_high_card] = black_high_card
# session[:white_high_card] = white_high_card
# session[:$white_hand] = white_hand 
# session[:$black_hand] = black_hand
# session[:white_temp] = white_temp
# session[:black_temp] = black_temp
# redirect '/'
# end




# Google polymorphism