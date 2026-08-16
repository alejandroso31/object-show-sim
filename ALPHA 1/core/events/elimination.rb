#!/usr/bin/env ruby

module Elimination
	def self::start(episode, list_of_contestants, immune_contestant)
		ufe_list = list_of_contestants.reject {|contestant| contestant.id == immune_contestant.id}

		shuffled_list = ufe_list.shuffle
		Message::Elimination::start_elimination(episode, shuffled_list, immune_contestant)
		Key::get
		shuffled_list[-1]
	end
end