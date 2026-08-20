#!/usr/bin/env ruby

module Element
	def self.indication(text = "Sample indication")
		text = "*** " + text.upcase + " ***"
		text = text.center(Screen.width)

		puts
		puts text
		puts
		puts
	end
end