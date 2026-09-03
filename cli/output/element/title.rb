#!/usr/bin/env ruby

module Element
	def self.title(text = "Sample title")
		text = "   " + text.upcase + "   "
		text = text.center(Screen.width, "=")

		puts
		puts text
		puts
	end
end