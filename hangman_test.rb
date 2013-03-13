require "test/unit"
require_relative "hangman"

class HangmanTest < Test::Unit::TestCase
	def setup
		@new_game = Hangman.new
	end

	def test_initialize_sets_random_word
		# starts with a random word 
		assert @new_game.words.include?(@new_game.word)
	end

	def test_initialize_starts_with_eight_changes
		assert_equal 8, @new_game.chances
	end


	def test_word_is_a_string
		assert_equal String, @new_game.word.class
	end

	def test_word_to_array_of_letters
		assert_equal Array, @new_game.word.split(//).class
	end

  	def test_for_number_of_spaces
  		@new_game.spaces = '_ _ _ _ _'
  		assert_equal '_ _ _ _ _', @new_game.spaces
  	end

  	def test_wrong_guess_should_decrease_chances
  		@new_game.guess_count = 2
  		assert_equal (@new_game.chances - @new_game.guess_count), (@new_game.chances - @new_game.guess_count)
  	end

  	def test_right_guess_should_not_change_chances
  		@new_game.chances = 8
  		@new_game.guess_count = 0
  		assert_equal (@new_game.chances - @new_game.guess_count), @new_game.chances
  	end




  	

end