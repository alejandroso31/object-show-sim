#!/usr/bin/env ruby

module Screen
	def self.width
		IO.console.winsize[1]
	end

	def self.wipe
		if RUBY_PLATFORM == /mswin|mingw|cygwin/
			system("cls")
		else
			system("clear")
		end
	end
end