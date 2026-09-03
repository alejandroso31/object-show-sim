#!/usr/bin/env ruby

module Element
	def self.divider(character = "*", length = Screen.width(4))
		divider = "*"

		length.times do |iteration|
			divider = "#{divider} #{character}"
		end

		puts
		puts divider.center(Screen.width)
		puts
	end
end