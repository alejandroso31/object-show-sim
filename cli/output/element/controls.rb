#!/usr/bin/env ruby

module Element
	def self.controls(controls = ["Sample", "List", ":D"])
		display = ""
		controls.each do |control|
			control = "[#{control}]".center(Screen.width(controls.length))
			display = "#{display}#{control}"
		end
		puts
		puts display
	end
end