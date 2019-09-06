class Bottles

	def verse(number)
		next_number = calculate_next_number(number)
		takes = number == 1 ? "it" : "one" 

<<-VERSE
#{calculate_number_text(number)} of beer on the wall, #{calculate_number_text(number)} of beer.
Take #{takes} down and pass it around, #{calculate_number_text(next_number)} of beer on the wall.
VERSE
	end

	def verses(first_number, second_number)
<<-VERSES
#{verse(first_number)}
#{verse(second_number)}
VERSES
	end

	def song
		total = ""
		(99..0).each do |number|
			total = "#{total}#{verse(first_number)}\n\n"
		end	
	end

	def calculate_next_number(count)
		next_count = count - 1

		if next_count == -1
			99
		else
			next_count
		end
	end

	def calculate_number_text(count)
		if count == 0
			"no more bottles"
		elsif count == -1
			"99 bottles"
		elsif count == 1
			"1 bottle"
		else
			"#{count} bottles"
		end
	end
end