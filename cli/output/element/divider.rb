#!/usr/bin/env ruby

module Element
	def self.divider(character = "-", length = 5)
		divider = ""

		length.times do |iteration|
			if iteration == 0
				divider = character
			else
				divider = "#{divider} #{character}"
			end
		end

		puts
		puts divider.center(Screen.width)
		puts
		puts
	end
end