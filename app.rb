require_relative 'poker_func.rb'
require_relative 'second.rb'
require 'sinatra'

enable :sessions

get '/' do
    deck = session[:deck]
    shuffled = session[:shuffled]
    whitehand = session[:whitehand]
    whighlow = session[:whighlow]
    bhighlow = session[:bhighlow]
    wconverted = session[:wconverted]
    bconverted = session[:bconverted]
    wnumbs = session[:wnumbs]
    bnumbs = session[:bnumbs]
    wsuits = session[:wsuits]
    bsuits = session[:bsuits]
    wdisplay = session[:wdisplay]
    bdisplay = session[:bdisplay]
    load 'second.rb'
    
    w_rf = session[:w_rf]
    w_sf = session[:w_sf]
    w_4 = session[:w_4]
    w_full = session[:w_full]
    w_flush = session[:w_flush]
    w_3 = session[:w_3]
    w_2p = session[:w_2p]
    w_2 = session[:w_2]
    w_high = session[:w_high]
    
    handrank_w = session[:handrank_w]
    winner_w = session[:winner_w]
        
    handrank_b = session[:handrank_b]
    winner_ b = session[:winner_b]

    b_rf = session[:b_rf]
    b_sf = session[:b_sf]
    b_4 = session[:b_4]
    b_full = session[:b_full]
    b_flush = session[:b_flush]
    b_3 = session[:b_3]
    b_2p = session[:b_2p]
    b_2 = session[:b_2]
    b_high = session[:b_high]
    load 'second.rb'

    erb :twohands
end

post '/twohands' do
    puts "Here are some #{params}."
    session[:deck] = params[:deck]
    session[:shuffled] = params[:shuffled]
    session[:whitehand] = params[:blackhand]
    session[:whighlow] = params[:whighlow]
    session[:bhighlow] = params[:bhighlow]
    session[:wconverted] = params[:wconverted]
    session[:bconverted] = params[:bconverted]
    session[:wnumbs] = params[:wnumbs]
    session[:bnumbs] = params[:bsuits]
    session[:wsuits] = params[:bsuits]
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

    puts "Here are some #{params}."
    

    redirect '/'
  end


