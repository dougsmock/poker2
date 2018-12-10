require_relative 'second.rb'
require_relative 'poker_func.rb'
require 'sinatra'

enable :sessions

get '/' do
  #   b_rf = session[:b_rf]
  #   b_sf = session[:b_sf]
  #   b_4 = session[:b_4]
  #   b_full = session[:b_full]
  #   b_flush = session[:b_flush]
  #   b_straight = session[:b_straight]
  #   b_3 = session[:b_3]
  #   b_2p = session[:b_2p]
  #   b_2 = session[:b_2]
  #   b_pair = session[b_pair]
  #   b_high = session[:b_high]

    erb :twohands, locals: {whitehand: session[:whitehand], white_numbers: session[:white_numbers], white_suits: session[:white_suits], black_numbers: session[:black_numbers], black_suits: session[:black_suits]} 
end

post '/play' do
  
    # session[:dealt] = params[:dealt]
    # session[:shuffled] = params[:shuffled]
    # session[:whitehand] = params[:blackhand]
    # session[:whighlow] = params[:whighlow]
    # session[:bhighlow] = params[:bhighlow]
    # session[:wconverted] = params[:wconverted]
    # session[:bconverted] = params[:bconverted]
    
    session[white_numbers] = params[:white_numbers]
    session[white_suits] = params[:white_suits]
    session[black_numbers] = params[:black_numbers]
    session[black_suits] = params[:black_suits]
    session[:whitehand] = params[:whitehand]


    # session[:whitenumbers] = params[:whitenumbers]
    # session[:wnumbs] = params[:wnumbs]
    # session[:bnumbs] = params[:bnumbs]
    # session[:wsuits] = params[:wsuits]
    # session[:bsuits] = params[:bsuits]
    session[:wdisplay] = params[:wdisplay]
    # session[:bdisplay] = params[:bdisplay]
    
    # session[:w_rf] = params[:w_rf]
    # session[:w_sf] = params[:w_sf]
    # session[:w_4] = params[:w_4]
    # session[:w_full] = params[:w_full]
    # session[:w_flush] = params[:w_flush]
    # session[:w_3] = params[:w_3]
    # session[:w_2p] = params[:w_2p]
    # session[:w_2] = params[:w_2]
    # session[:w_high] = params[:w_high]
    
    # session[:handrank_w] = params[:handrank_w]
    # session[:winner_w] = params[:winner_w]
        
    # session[:handrank_b] = params[:handrank_b]
    # session[:winner_b] = params[:winner_b]

    # session[:b_rf] = params[:b_rf]
    # session[:b_sf] = params[:b_sf]
    # session[:b_4] = params[:b_4]
    # session[:b_full] = params[:b_full]
    # session[:b_flush] = params[:b_flush]
    # session[:b_3] = params[:b_3]
    # session[:b_2p] = params[:b_2p]
    # session[:b_2] = params[:b_2]
    # session[:b_high] = params[:b_high]
    redirect '/'

    post '/reset' do
        "Hello World"
    end
  
  end

