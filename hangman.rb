class Hangman
	# This class will be used to run an instance of a hangman game
	# It is only concerned with one run through of the game
	# It is not responsible for human interaction.

	attr_accessor :words, :word, :spaces, :chances, :guess, :guess_count, :guess_index

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
  	@spaces = word.map { |x| "_" }
  	@more_spaces = @spaces.join(' ')
  end

  def guess
    while @guess_count <= @chances
      puts "Please enter a guess"
      @guess = gets.chomp
      if @word.include?(@guess)
        sub
        if @spaces == @word
          puts "You've won!"
          break
        end
      elsif !@word.include?(@guess)
        @guess_count += 1
        puts "Letter not included"
      end
    end
  end

  def sub
    @guess_index = @word.index(@guess)
    @spaces[@guess_index] = @guess
    puts "Good choice!"
    p @spaces
  end

end

hangman = Hangman.new
hangman.word_to_letters
hangman.space_converter
hangman.guess
