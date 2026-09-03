#!/usr/bin/env ruby

module Element
	def self.subtitle(text = "Sample subtitle")
		text = "*** " + text.upcase + " ***"
		text = text.center(Screen.width)

		puts text
		puts
	end
end