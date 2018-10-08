require 'minitest/autorun'
require_relative 'poker_func.rb'
class Poker_test < Minitest::Test

	def test_first
		assert_equal(2, 1+1)
	end

	def test_of_integer_division
		assert_equal(1, 7/4)
	end

	def test_of_modulus
		assert_equal(3, 7%4)
	end

	def test_card_position
		card_arr = [*1..52]
		assert_equal(11, card_arr[10])
	end

	def test_shuffling_cards_length
		card_arr = [*1..52]
		newcard_arr = card_arr.shuffle
		assert_equal(52, newcard_arr.length)
	end

	def test_of_array_pop
		test_array = [*1..52]
		x_array = test_array.pop(5)
		assert_equal([48, 49, 50, 51, 52], x_array)
	end

	def test_of_shuffle_array_both_hands
		test_arr = [*1..52]
		p "Deal from #{test_arr}."
		x_arr = test_arr.shuffle
		p "Shuffled cards are #{x_arr}."
		white = x_arr.pop(5)
		p "White's hand is #{white}."
		black = x_arr.pop(5)
		p "Black's hand is #{black}."
	end

	def test_adding_seven_to_white
		whitecards_arr = [1, 2, 3, 4, 5]
		w = 0
    	until whitecards_arr[w] == nil
            whitecards_arr[w] += 7
			w += 1
		end
		white_added = whitecards_arr
		p "The adjusted white cards are #{white_added}."
	end
	
	def test_adding_seven_to_black
		blackcards_arr = [6, 7, 8, 10, 52]
		w = 0
    	until blackcards_arr[w] == nil
            blackcards_arr[w] += 7
			w += 1
		end
		black_added = blackcards_arr
		p "The adjusted black cards are #{black_added}."
	end
	
	def test_position_five_is_nil
		black_added = [13, 14, 15, 17, 59]
		assert_nil(black_added[5], msg = nil)
	end

	def test_position_five_is_nil_white
		white_added = [8, 9, 10, 11, 12]
		assert_nil(white_added[5], msg = nil)
	end

end


