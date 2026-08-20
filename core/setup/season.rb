#!/usr/bin/env ruby

module Setup::Season
	def self.number_of_contestants
		min_limit = 3
		max_limit = 64
		current_selection = 20
		input = current_selection
		number_of_contestants = current_selection
		awaiting_input = true

		while awaiting_input
			Message::Setup::Season.number_of_contestants(min_limit, max_limit)
			Message::Menu.number_selector(min_limit, max_limit, current_selection)
			input = Menu.number_selector(min_limit, max_limit, current_selection)

			if input == Key::ENTER
				number_of_contestants = current_selection
				awaiting_input = false
			else
				current_selection = input
			end
		end
		number_of_contestants
	end

	def self.number_of_finalists(number_of_contestants)
		min_limit = 2
		max_limit = number_of_contestants - 1
		current_selection = 2
		input = current_selection
		number_of_finalists = current_selection
		awaiting_input = true

		while awaiting_input
			Message::Setup::Season.number_of_finalists(min_limit, max_limit)
			Message::Menu.number_selector(min_limit, max_limit, current_selection)
			input = Menu.number_selector(min_limit, max_limit, current_selection)

			if input == Key::ENTER
				number_of_finalists = current_selection
				awaiting_input = false
			else
				current_selection = input
			end
		end
		number_of_finalists
	end

	def self.list_of_contestants(number_of_contestants)
		list_of_contestants = []

		number_of_contestants.times do |contestant_index|
			id = contestant_index + 1
			name = Setup::Contestant.name(id)
			gender = Setup::Contestant.gender(name)

			list_of_contestants.push(Contestant.new(id, name, gender))
		end
		list_of_contestants
	end
end