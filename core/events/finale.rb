#!/usr/bin/env ruby

module Finale
	def self.start(current_episode, list_of_finalists)
		shuffled_list = list_of_finalists.shuffle
		Message::Finale.start_finale(current_episode, list_of_finalists, shuffled_list)
		Key.get
		shuffled_list
	end
end