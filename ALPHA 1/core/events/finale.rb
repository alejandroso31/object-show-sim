#!/usr/bin/env ruby

module Finale
	def self::start(list_of_contestants)
		shuffled_list = list_of_contestants.shuffle
		winner = shuffled_list[0]
		runner_up = shuffled_list[1]
		Message::Finale::start_finale(winner, runner_up)
		Key::get
		runner_up
	end
end