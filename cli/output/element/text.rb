#!/usr/bin/env ruby

module Element
	def self.text(text = "Sample text")
		text = text.center(Screen.width)

		puts text
	end
end