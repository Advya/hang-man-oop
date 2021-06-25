class Game

	def initialize(slovo)
		@letters = get_letters(slovo)

		@errors = 0
		@good_letters = []
		@bad_letters = []
		@status = 0
	end
	def get_letters(slovo)
		if slovo ==nil
			abort "There is no word you dumbass"
		end
		return slovo.split("")
	end

	def ask_next_letter
		puts "Yor letter: "
		letter = ""
		while letter == "" 
			letter = STDIN.gets.chomp
		end

		next_step(letter)
	end

	def next_step(letter)
		if @status == -1 || @status == 1
			return
		end
		if @good_letters.include?(letter) || @bad_letters.include?(letter)
			return
		end
		if @letters.include?(letter)
			@good_letters << letter
			if @good_letters.size == @letters.uniq.size
				@status = 1
			end
		else
			@bad_letters << letter
			@errors += 1
			if @errors >=7
				@status = -1
			end
		end
	end

	def letters
		@letters
	end
	def good_letters
		@good_letters
	end
	def bad_letters
		@bad_letters
	end
	def status
		@status
	end
	def errors
		@errors
	end

end