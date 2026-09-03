#!/usr/bin/env ruby

class Season
	def initialize
		@number_of_contestants = Setup::Season.number_of_contestants
		@number_of_finalists = Setup::Season.number_of_finalists(@number_of_contestants)
		@list_of_contestants = Setup::Season.list_of_contestants(@number_of_contestants)
		@list_of_eliminated_contestants = []
		@list_of_finalists = []

		@current_episode = 1
		@remaining_contestants = @number_of_contestants
	end

	def mainloop
		while @remaining_contestants > @number_of_finalists
			immune_contestant = Challenge.start(@current_episode, @list_of_contestants)
			@current_episode += 1

			eliminated_contestant = Elimination.start(@current_episode, @list_of_contestants, immune_contestant)
			@list_of_eliminated_contestants.push(eliminated_contestant)

			@list_of_contestants.reject! {|contestant| contestant.id == eliminated_contestant.id}
			@remaining_contestants -= 1
		end
	end

	def end
		@current_episode += 1
		@list_of_finalists = Finale.start(@current_episode, @list_of_contestants)

		Message.leaderboard(@list_of_finalists, @list_of_eliminated_contestants)
		Key.get
		Screen.wipe
	end
end