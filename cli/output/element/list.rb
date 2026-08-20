#!/usr/bin/env ruby

module Element
	def self.list(list = ["Sample", "List", ":D"], delay = 0)
		list.each do |list_element|
			sleep(delay)
			puts list_element.center(Screen.width)
		end
		puts
	end
end