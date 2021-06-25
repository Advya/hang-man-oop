class Result 
	def print_status(game)
		cls
		puts "Word: " + get_word_for_print(game.letters, game.good_letters)
		puts "Errors: #{game.errors} #{game.bad_letters.join(", ")}"
		if game.errors >= 7
			puts "You lose!"
		else
			if game.letters.uniq.size == game.good_letters.size
				puts "You Win!"
			else
				puts "You have: " + (7 - game.errors).to_s
			end
		end

	end
	def get_word_for_print(letters, good_letters)
		result = ""

		for letter in letters do
			if good_letters.include? letter
				result += letter + " "
			else
				result += "__ "
			end
		end
		return result
	end
	def cls
		system "cls"
	end

end