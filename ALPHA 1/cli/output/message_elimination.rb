#!/usr/bin/env ruby

module Message
	module Elimination
		def self::start_elimination(episode, shuffled_list, immune_contestant)
			Screen.wipe
			puts "=== EPISODE #{episode} ELIMINATION ==="
			puts
			puts "- #{shuffled_list.length} contestants are up for elimination, the viewers will vote for any of them to be eliminated -"
			puts "- #{immune_contestant.name} won last challenge, so, they are safe -"
			puts
			puts "PRESS ANY KEY TO SEE WHO'S SAFE AND WHO'S NOT:"
			puts
			Key::get

			shuffled_list.each do |contestant|
				sleep(1.5)
				if contestant == shuffled_list[-1]
					puts "#{contestant.name} - ELIMINATED!"
				else
					puts "#{contestant.name} - SAFE"
				end
			end
			sleep(1)
			puts
			puts "#{shuffled_list[-1].name} has been eliminated by the viewers and will be treated with TLC!"
			puts
			puts "Press any key to see episode #{episode} challenge"
		end
	end
end