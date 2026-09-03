#!/usr/bin/env ruby

module Setup
	def self.language
		config = {
			selection: 0,
			labels: ["English", "Español"],
			values: [],
			min_limits: [],
			max_limits: []
		}
		awaiting_input = true
		action = {}

		while awaiting_input
			Message::Setup.language
			Message::Menu.selector(config)
			action = Menu.selector(config)

			if action[:done]
				awaiting_input = false
			else
				config[:selection] = action[:selection]
			end

			case config[:selection]
			when 0
				$language = :en
			when 1
				$language = :es
			end
		end
	end
end