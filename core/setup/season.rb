#!/usr/bin/env ruby

module Setup::Season
	def self.number_of_contestants
		config = {
			selection: 0,
			labels: [""],
			values: [14],
			min_limits: [3],
			max_limits: [64]
		}
		awaiting_input = true
		action = {}

		while awaiting_input
			Message::Setup::Season.number_of_contestants(config[:min_limits][0], config[:max_limits][0])
			Message::Menu.selector(config)
			action = Menu.selector(config)

			if action[:done]
				awaiting_input = false
				number_of_contestants = config[:values][0]
			else
				config[:selection] = action[:selection]
				config[:values] = action[:values]
			end
		end
		number_of_contestants
	end

	def self.number_of_finalists(number_of_contestants)
		number_of_contestants -= 1
		config = {
			selection: 0,
			labels: [""],
			values: [2],
			min_limits: [2],
			max_limits: [number_of_contestants]
		}
		awaiting_input = true
		action = {}

		while awaiting_input
			Message::Setup::Season.number_of_finalists(config[:min_limits][0], config[:max_limits][0])
			Message::Menu.selector(config)
			action = Menu.selector(config)

			if action[:done]
				awaiting_input = false
				number_of_finalists = config[:values][0]
			else
				config[:selection] = action[:selection]
				config[:values] = action[:values]
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
			ability = Setup::Contestant.ability(name)

			list_of_contestants.push(Contestant.new(id, name, gender, ability))
			Message::Setup::Contestant.display_info(list_of_contestants[contestant_index])
		end
		list_of_contestants
	end
end