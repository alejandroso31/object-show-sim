#!/usr/bin/env ruby

module Setup
	def self::number_of_contestants
		min_limit = 8
		max_limit = 50
		current_selection = min_limit

		number_of_contestants = min_limit
		input = 0
		awaiting_input = true

		while awaiting_input
			Message::Setup::number_of_contestants
			Message::Menu::number_selector(min_limit, max_limit, current_selection)
			input = Menu::number_selector(min_limit, max_limit, current_selection)

			if input == Key::ENTER
				number_of_contestants = current_selection
				awaiting_input = false
			else
				current_selection = input
			end
		end
		number_of_contestants
	end

	def self::list_of_contestants(number_of_contestants)
		list_of_contestants = []

		number_of_contestants.times do |contestant_index|
			id = contestant_index + 1

			Message::Setup::contestant_name(id)
			name = gets.chomp

			awaiting_input = true
			input = "0"
			while awaiting_input
				Message::Setup::contestant_gender(name)
				input = Key::get

				case input
				when "0"
					gender = "None"
					awaiting_input = false
				when "1"
					gender = "Male"
					awaiting_input = false
				when "2"
					gender = "Female"
					awaiting_input = false
				end
			end

			list_of_contestants.push(Contestant.new(id, name, gender))
		end
		list_of_contestants
	end
end