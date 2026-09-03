#!/usr/bin/env ruby

module Challenge
	def self.start(episode, list_of_contestants)
		id = rand(1..15)
		results = Challenge.list(id, list_of_contestants)
		Message::Challenge.header(episode)
		sleep(0.5)
		Message::Challenge.presentation(id)
		Key.get
		sleep(0.5)
		Message::Challenge.results(id, episode, results)
		Key.get
		results[0][:contestant]
	end
end