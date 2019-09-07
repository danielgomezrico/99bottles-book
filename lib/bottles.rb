class Bottles

	def verse(number)
		next_number = calculate_next_number(number)

<<-VERSE
#{calculate_number_text(number).capitalize} of beer on the wall, #{calculate_number_text(number)} of beer.
#{calculate_second_sense(number)}, #{calculate_number_text(next_number)} of beer on the wall.
VERSE
	end

	def verses(top_number, bottom_number)
		total = []

		top_number.downto(bottom_number) do |number|
			total << verse(number)
		end

		total.join("\n")
	end

	def song
		verses(99, 0)
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

	def calculate_second_sense(count)
		if count == 0
			"Go to the store and buy some more"
		else
			it = count == 1 ? "it" : "one" 
			"Take #{it} down and pass it around"
		end
	end
end