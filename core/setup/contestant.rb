#!/usr/bin/env ruby

module Setup::Contestant
	def self.name(id)
		config ={
			string: "",
			min_limit: 1,
			max_limit: 50
		}
		awaiting_input = true
		action = {string: ""}

		while awaiting_input
			Message::Setup::Contestant.name(id)
			Message::Menu.typer(action[:string])
			action = Menu.typer(config)

			if action[:done] && action[:string].length >= config[:min_limit]
				awaiting_input = false
				name = action[:string]
			else
				config[:string] = action[:string]
			end
		end
		name
	end

	def self.gender(name)
		config = {
			selection: 0,
			labels: [
				Grammar::Gender.name(:nonbinary), 
				Grammar::Gender.name(:male), 
				Grammar::Gender.name(:female)
			],
			values: [],
			min_limits: [],
			max_limits: []
		}
		awaiting_input = true
		action = {}

		while awaiting_input
			Message::Setup::Contestant.gender(name)
			Message::Menu.selector(config)
			action = Menu.selector(config)

			if action[:done]
				awaiting_input = false
			else
				config[:selection] = action[:selection]
			end
		end

		case config[:selection]
		when 0
			gender = :nonbinary
		when 1 
			gender = :male
		when 2
			gender = :female
		end
		gender
	end

	def self.ability(name)
		config = {
			selection: 0,
			labels: [
			Grammar::Ability.name(:strength), 
			Grammar::Ability.name(:resistance), 
			Grammar::Ability.name(:agility),
			Grammar::Ability.name(:strategy),
			Grammar::Ability.name(:discipline)
		],
			values: [5, 5, 5, 5, 5],
			min_limits: [0, 0, 0, 0, 0],
			max_limits: [10, 10, 10, 10, 10]
		}
		awaiting_input = true
		action = {}

		while awaiting_input
			Message::Setup::Contestant.ability(name)
			Message::Menu.selector(config)
			action = Menu.selector(config)
			
			if action[:done]
				awaiting_input = false
				ability_values = action[:values]
			else
				config[:values] = action[:values]
				config[:selection] = action[:selection]
			end
		end

		ability = {
			strength: ability_values[0],
			resistance: ability_values[1],
			agility: ability_values[2],
			strategy: ability_values[3],
			discipline: ability_values[4]
		}
	end
end