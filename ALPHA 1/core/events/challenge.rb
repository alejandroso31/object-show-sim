#!/usr/bin/env ruby

module Challenge
	def self::start(episode, list_of_contestants)
		shuffled_list = list_of_contestants.shuffle
		Message::Challenge::start_generic_challenge(episode, shuffled_list)
		Key::get
		shuffled_list[0]
	end
end