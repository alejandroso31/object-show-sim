#!/usr/bin/env ruby
module Challenge
	def self.list(id, list_of_contestants)
		case id
		when 1
			config = {categories: [:agility], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 2
			config = {categories: [:strength], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 3
			config = {categories: [:resistance], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 4
			config = {categories: [:strategy], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 5
			config = {categories: [:discipline], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 6
			config = {categories: [:agility, :strength], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 7
			config = {categories: [:agility, :resistance], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 8
			config = {categories: [:agility, :strategy], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 9
			config = {categories: [:agility, :discipline], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 10
			config = {categories: [:strength, :resistance], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 11
			config = {categories: [:strength, :strategy], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 12
			config = {categories: [:strength, :discipline], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 13
			config = {categories: [:resistance, :strategy], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 14
			config = {categories: [:resistance, :discipline], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		when 15
			config = {categories: [:strategy, :discipline], list_of_contestants: list_of_contestants}
			results = Challenge.core(config)
		end
		results
	end
end