class Hangman
	# This class will be used to run an instance of a hangman game
	# It is only concerned with one run through of the game
	# It is not responsible for human interaction.

	attr_accessor :words, :word, :spaces, :chances, :guess, :guess_count

  def initialize
    @words = ['array', 'dog', 'chow']
    @word = @words.sample.to_s.downcase
    @chances = 8
    @guess_count = 0
    puts "Hangman game!"
  end

  def word_to_letters
  	@word = @word.split(//)
  end

  def space_converter
    #new_word = @word.dup
  	spaces = word.map { |x| "_" }
  	@more_spaces = spaces.join(' ')
    p @more_spaces
    p @word
  end

  def guess
    while @guess_count <= @chances
      puts "Please enter a guess"
      @guess = gets.chomp
      if @word.include?(@guess)
        puts @guess_count
      elsif !@word.include?(@guess)
        @guess_count += 1
        puts "Letter not included"
        p @word
      end
    end

  end

end

hangman = Hangman.new
hangman.word_to_letters
hangman.space_converter
hangman.guess
