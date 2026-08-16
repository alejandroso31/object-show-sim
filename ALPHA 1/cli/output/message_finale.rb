#!/usr/bin/env ruby

module Message
	module Finale
		def self::start_finale(winner, runner_up)
			Screen.wipe
			puts "=== SEASON FINALE ==="
			puts
			puts "- After many challenges and eliminations, our final 2 contestants will be voted on by the viewers to see which one of them wins this season! -"
			puts "PRESS ANY KEY TO SEE THE RESULT!:"
			puts
			Key::get
			puts "AND THE SEASON WINNER IS..."
			sleep(1)
			puts "..."
			sleep(2)
			puts
			puts "#{winner.name}!"
			puts
			puts "#{winner.name} has won this season! #{runner_up.name} leaves with nothing."
			puts "Press any key to see the positions"
		end
	end
end