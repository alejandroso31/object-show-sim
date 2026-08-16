#!/usr/bin/env ruby

module Message
	module Menu
		def self::number_selector(min_limit = 1, max_limit = 50, current_selection = min_limit)
			puts
			puts "=========="
			puts "< #{current_selection} >"
			puts "=========="
			puts
			puts "MIN: #{min_limit}		MAX: #{max_limit}"
			puts
			puts "UP/RIGHT: INCREASE	DOWN/LEFT: DECREASE		ENTER/SPACE: ACCEPT"
		end
	end
end