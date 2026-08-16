#!/usr/bin/env ruby

module Message
	module Challenge
		def self::start_generic_challenge(episode, shuffled_list)
			Screen.wipe
			puts "=== EPISODE #{episode} CHALLENGE ==="
			puts
			puts "- All #{shuffled_list.length} contestants must compete in a 2km marathon, whoever comes first wins immunity and is safe from elimination -"
			puts
			puts "PRESS ANY KEY TO SEE EVERYONE'S RESULTS:"
			puts
			Key::get

			iteration = shuffled_list.length
			shuffled_list.reverse_each do |contestant|
				sleep(1.5)
				if contestant == shuffled_list[0]
					puts "#{iteration}º #{contestant.name} - WINS IMMUNITY!"
				else
					puts "#{iteration}º #{contestant.name} - UP FOR ELIMINATION"
				end
				iteration -= 1
			end
			sleep(1)
			puts
			puts "#{shuffled_list[0].name} won immunity! Everyone else is up for elimination."
			puts "Press any key to see episode #{episode+1} elimination"
		end
	end
end