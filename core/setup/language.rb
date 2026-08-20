#!/usr/bin/env ruby

module Setup
	def self.language
		language_list = ["English", "Español"]
		awaiting_input = true
		current_selection = 0
		input = ""

		while awaiting_input
			Message::Setup.language
			Message::Menu.option_selector(language_list, current_selection)
			input = Menu.option_selector(language_list, current_selection)

			case input
			when Key::ENTER
				awaiting_input = false
			else
				current_selection = input
			end

			case current_selection
			when 0
				$language = :en
			when 1
				$language = :es
			end
		end
	end
end