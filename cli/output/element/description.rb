#!/usr/bin/env ruby

module Element
	def self.description(text = "Sample description")
		text = "- " + text + " -"
		text = text.center(Screen.width)

		puts
		puts text
		puts
		puts
	end
end