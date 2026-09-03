#!/usr/bin/env ruby

module Screen
	def self.width(fraction = 1)
		IO.console.winsize[1]/fraction
	end

	def self.wipe
		if RUBY_PLATFORM.match(/mswin|mingw|cygwin/)
			system("cls")
		else
			system("clear")
		end
	end
end