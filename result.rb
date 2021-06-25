class Result 
	def print_status(game)
		cls
		puts "Word: " + get_word_for_print(game.letters, game.good_letters)
		puts "Errors: #{game.errors} #{game.bad_letters.join(", ")}"

		print_hang(game.errors)

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

	def print_hang(errors)
		case errors
			when 0
				 puts '
		          _______
		          |/
		          |
		          |
		          |
		          |
		          |
		          |
		          |
		        __|________
		        |         |
		        '
			when 1
				puts '
		        _______
		        |/
		        |     ( )
		        |
		        |
		        |
		        |
		        |
		        |
		      __|________
		      |         |
		      '
			when 2
				      puts '
		        _______
		        |/
		        |     ( )
		        |      |
		        |
		        |
		        |
		        |
		        |
		      __|________
		      |         |
		      '

			when 3
		      puts '
		        _______
		        |/
		        |     ( )
		        |      |_
		        |        \\
		        |
		        |
		        |
		        |
		      __|________
		      |         |
		      '
		    when 4
		      puts '
		        _______
		        |/
		        |     ( )
		        |     _|_
		        |    /   \\
		        |
		        |
		        |
		        |
		      __|________
		      |         |
		      '
		    when 5
		      puts '
		        _______
		        |/
		        |     ( )
		        |     _|_
		        |    / | \\
		        |      |
		        |
		        |
		        |
		      __|________
		      |         |
		      '

		    when 6
		      puts '
		        _______
		        |/
		        |     ( )
		        |     _|_
		        |    / | \\
		        |      |
		        |     / \\
		        |    /   \\
		        |
		      __|________
		      |         |
		      '
		    when 7
		      puts '
		        _______
		        |/     |
		        |     (_)
		        |     _|_
		        |    / | \\
		        |      |
		        |     / \\
		        |    /   \\
		        |
		      __|________
		      |         |
		      '
		    end
		    

	end

end