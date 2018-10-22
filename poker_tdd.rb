require 'minitest/autorun'
require_relative 'poker_func.rb'
class Poker_test < Minitest::Test

	def test_first
		assert_equal(2, 1+1)
	end

	def test_deal_hands_and_split
		card_arr = [*1..52]
		# p "Deck #{card_arr}."
		shufcard_arr = card_arr.shuffle 
		# p shufcard_arr
		whitecards_arr = []
		whitecards_arr = shufcard_arr.pop(5)
		# p "White: #{whitecards_arr}."
		black_avail = shufcard_arr
		blackcards_arr = black_avail.pop(5)
		# p "Black: #{blackcards_arr}."
		bothhands = []
		bothhands << whitecards_arr
		bothhands << blackcards_arr
		# p "Hands combined: #{bothhands}."
		whitehand = bothhands.shift(1)
		# p "White hand again: #{whitehand}."
		blackhand = bothhands[0]
		# p "Black hand again: #{blackhand}."
	end

	def test_of_integer_division
		assert_equal(1, 7/4)
	end

	def test_of_modulus
		assert_equal(3, 7%4)
	end

	# def test_card_position
	# 	card_arr = [*1..52]
	# 	assert_equal(11, card_arr[10])
	# end

	# def test_shuffling_cards_length
	# 	card_arr = [*1..52]
	# 	newcard_arr = card_arr.shuffle
	# 	assert_equal(52, newcard_arr.length)
	# end

	def test_of_array_pop
		test_array = [*1..52]
		x_array = test_array.pop(5)
		assert_equal([48, 49, 50, 51, 52], x_array)
	end

	def test_of_shuffle_array_both_hands
		test_arr = [*1..52]
		# p "Deal from #{test_arr}."
		x_arr = test_arr.shuffle
		# p "Shuffled cards are #{x_arr}."
		white = x_arr.pop(5)
		# p "White's hand is #{white}."
		black = x_arr.pop(5)
		# p "Black's hand is #{black}."
	end

	def test_adding_seven_to_white
		whitecards_arr = [1, 2, 3, 4, 5]
		w = 0
    	until whitecards_arr[w] == nil
            whitecards_arr[w] += 7
			w += 1
		end
		white_added = whitecards_arr
		# p "The adjusted white cards are #{white_added}."
	end
	
	def test_adding_seven_to_black
		blackcards_arr = [6, 7, 8, 10, 52]
		w = 0
    	until blackcards_arr[w] == nil
            blackcards_arr[w] += 7
			w += 1
		end
		black_added = blackcards_arr
		# p "The adjusted black cards are #{black_added}."
	end
	
	# def test_position_five_is_nil
	# 	black_added = [13, 14, 15, 17, 59]
	# 	assert_nil(black_added[5], msg = nil)
	# end

	# def test_position_five_is_nil_white
	# 	white_added = [8, 9, 10, 11, 12]
	# 	assert_nil(white_added[5], msg = nil)
	# end

	def test_for_white_card_numbers
		white_added = [8, 9, 10, 11, 12]
		w = 0
    	y = 0
    	white_number = []
    	until white_added[w] == nil
       		white_number[y] = white_added[w] / 4
			w += 1
			y += 1
		end
		# p "The numbers of the white hand are #{white_number}."
	end
	
	def test_for_black_card_numbers
		black_added = [13, 14, 15, 17, 59]
		w = 0
    	y = 0
    	black_number = []
    	until black_added[w] == nil
			black_number[y] = black_added[w] / 4
			w += 1
			y += 1
		end
		# p "The numbers of the black hand are #{black_number}."
	end
	
	def test_for_white_suits
		white_added = [8, 9, 10, 11, 12]
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
		# p "White's suits are #{white_suits}."
	end
	
	def test_for_black_suits
		black_added = [13, 14, 15, 17, 59]
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
		end
		# p "Black's suits are #{black_suits}."
	end	
	
	def test_high_card_string #obsolete REDOING?
		white_number = [12, 10, 8, 6, 4]
		# p white_number
		w_high = white_number.max
		# p "#{w_high} is white's high card, with "
	end

	def test_high_card #obsolete, as cards will be shuffled from high to low
		white_number = [6, 6, 8, 12, 10]
		assert_equal(12, white_number.max)
	end

	def test_shuffle_high_to_low
		white = [18, 23, 42, 55, 54]
		# p "This is white's hand #{white}."
		high_arr = white.sort { |x,y| y <=> x }
		# p "This is white's sorted hand #{high_arr}."
	end

	def test_get_a_pair
		white = [13, 13, 10, 7, 7]
		if (white[0] == white[1])  
			# p "Pair of #{white[0]}s, #{white[2]} high."
		elsif (white[1] == white[2])  
			# p "Pair of #{white[1]}s, #{white[0]} high."
		elsif (white[2] == white[3])  
			# p "Pair of #{white[2]}s, #{white[0]} high."
		elsif (white[3] == white[4])  
			# p "Pair of #{white[3]}s, #{white[0]} high."
		end
	end

	def test_get_two_pair
		white = [13, 12, 12, 7, 7]
		if (white[0] == white[1]) && (white[2] == white[3])
			# p "Two pair, #{white[0]}s and #{white[2]}s, #{white[4]} kicker."
		elsif (white[0] == white[1]) && (white[3] == white[4])
			# p "Two pair, #{white[0]}s and #{white[3]}s, #{white[2]} kicker."
		elsif (white[1] == white[2]) && (white[3] == white[4])
			# p "Two pair, #{white[1]}s and #{white[3]}s, #{white[0]} kicker."
		end
	end


	def test_get_three_of_Kind
		white = [13, 12, 7, 7, 7]
		if (white[0] == white[1]) && (white[0] == white[2])
			# p "Three of a kind, #{white[0]}s."
		elsif (white[1] == white[2]) && (white[1] == white[3])
			# p "Three of a kind, #{white[1]}s."
		elsif (white[2] == white[3]) && (white[2] == white[4])
			# p "Three of a kind, #{white[2]}s."
		end
	end


	def test_get_four_of_Kind
		white = [13, 13, 13, 13, 7]
		if (white[0] == white[1]) && (white[0] == white[2]) && (white[0] == white[3])
			# p "Four of a kind, #{white[0]}s."
		elsif (white[1] == white[2]) && (white[1] == white[3]) && (white[1] == white[4])
			# p "Four of a kind, #{white[1]}s."
		end
	end


	def test_full_house
		white = [10, 10, 10, 9, 9]
		if ((white[0] == white[1]) && (white[0] == white[2])) && (white[3] == white[4])
			# p "Full house, #{white[0]} over #{white[3]}."
		elsif (white[0] == white[1]) && ((white[2] == white[3]) && (white[2] == white[4]))
			# p "Full house, #{white[2]} over #{white[0]}."
		end
	end

	def test_straight
		white = [14, 6, 4, 3, 2]
		if (white[0] - 1 == white[1]) && (white[1] - 1 == white[2]) && (white[2] - 1 == white[3]) && (white[3] - 1 == white[4])
			p "Straight, #{white[0]} high."
		elsif (white[0] == 14) && (white[1] == 5) && (white[2] == 4) && (white[3] == 3) && (white[4] == 2)
			p "Straight, 5 high."
		end
	end

	def test_flush
		white_suits = ["Hearts", "Hearts", "Hearts", "Hearts", "Hearts"]
		white_numbers = [13, 10, 9, 8, 2]
		if (white_suits[0] == white_suits[1]) && (white_suits[1] == white_suits[2]) && (white_suits[2] == white_suits[3]) && (white_suits[3] == white_suits[4])
			# p "Flush, #{white_numbers[0]} high."
		end
	end


	def test_straight_flush ##Test this over again. 
		white_suits = ["Hearts", "Hearts", "Hearts", "Hearts", "Hearts"]
		white_numbers = [6, 5, 4, 3, 2]
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
			if (white_numbers[0] == 14 && white_numbers[1] == 5)
				# p "Straight flush, 5 high."
			elsif (white_numbers[0] == 14 && white_numbers[1] == 13)
				# p "ROYAL FLUSH!"
			else
				# p "Straight flush, #{white_numbers[0]} high."
			end
		end
	end

	def test_hand_display
		white_numbers = [11, 10, 8, 4, 2]
		white_suits = ["Clubs", "Diamonds", "Hearts", "Hearts", "Spades"]
		x = 0
		5.times do
			# p "#{white_numbers[x]} of #{white_suits[x]}"
			x += 1
		end
	end
	
	# def test_print_straight_flush
	# 	w_sf = "Straight flush, 10 high."
	# 	if w_sf == "ROYAL FLUSH"
	# 		p w_sf
	# 	elsif w_sf.include? "Four of a kind."
	# 		p w_sf
	# 	end
	# end

	def test_print_fours
		w_4s = "Four of a kind, 10s."
		if w_4s.include? "Four of a kind,"
			# p w_4s
		end
	end

	def test_print_rank_hand
		w_sf = "Straight flush, 10"
		w_4s = "Four of a kind, 9"
		w_full = "Full house, 6 over 4."
		w_flush = ""
		w_straight = ""
		w_3s = "Three of a kind, 6s"
		w_2pair = "Two pair, 6s and 4s"
		w_pair = "Pir, 6s"
		w_high = ""
		white_numbers = [6, 6, 6, 4, 4]

		if w_sf == "ROYAL FLUSH!"
			# p w_sf
			handrank_w = 1
			# p handrank_w
			return handrank_w
		elsif w_sf.include? "Straight flush,"
			# p w_sf
			handrank_w = 2
			# p handrank_w
			return handrank_w
		end
	
		if w_4s.include? "Four of a kind,"
			# p w_4s
			handrank_w = 3
			# p handrank_w
			return handrank_w
		end
	
		if w_full.include? "Full house,"
			# p w_full
			handrank_w = 4
			# p handrank_w
			return handrank_w
		end
	
		if w_flush.include? "Flush,"
			# p w_flush
			handrank_w = 5
			# p handrank_w
			return handrank_w
		end
	
		if w_straight.include? "Straight,"
			# p w_straight
			handrank_w = 6
			# p handrank_w
			return handrank_w
		end
	
		if w_3s.include? "Three of a kind,"
			# p w_3s
			handrank_w = 7
			# p handrank_w
			return handrank_w
		end
	
		if w_2pair.include? "Two pair,"
			# p w_2pair
			handrank_w = 8
			# p handrank_w
			return handrank_w
		end
	
		if w_pair.include? "Pair,"
			# p w_pair
			handrank_w = 9
			# p handrank_w
			return handrank_w
		else
			# p "High card, #{white_numbers}."
			handrank_w = 10
			# p handrank_w
		end
	end










end


