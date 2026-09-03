#!/usr/bin/env ruby

module Challenge
	def self.core(config = {categories: [:strength, :resistance], list_of_contestants: []})
		categories = config[:categories]
		list_of_contestants = config[:list_of_contestants]
		results = []

		list_of_contestants.each do |contestant|
			score = 0
			luck = rand(-50..50) * categories.length
			categories.each do |category|
				score += contestant.ability[category] * 10
			end
			score += luck
			score = score / categories.length
			results.push({contestant: contestant, score: score})
		end
		results.sort_by {|contestant| -contestant[:score]}
	end
end