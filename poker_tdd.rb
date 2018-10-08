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

	def test_if_plus_seven_worked_white
		assert_equal(x
	end

end
