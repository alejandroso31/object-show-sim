#!/usr/bin/env ruby

module Message
	def self::positions(winner, list_of_eliminated_contestants)
		Screen.wipe
		puts "=== FINAL POSITIONS ==="
		puts
		sleep (1)
		puts "1º - #{winner.name}"
		iteration = 2
		list_of_eliminated_contestants.reverse_each do |contestant|
			sleep (0.25)
			puts "#{iteration}º - #{contestant.name}"
			iteration += 1
		end

		sleep(1)
		puts
		puts "Thanks for playing! Press any key to exit"
	end
end