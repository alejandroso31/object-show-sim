#!/usr/bin/env ruby

module Menu
	def self.number_selector(min_limit = 1, max_limit = 50, current_selection = min_limit)
		case Key.get
		when Key::UP, Key::RIGHT, Key::W, Key::D, Key::W_LOW, Key::D_LOW
			if current_selection < max_limit
				current_selection += 1
			end
		when Key::DOWN, Key::LEFT, Key::S, Key::A, Key::S_LOW, Key::A_LOW
			if current_selection > min_limit
				current_selection -= 1
			end
		when Key::ENTER, Key::SPACE
			current_selection = Key::ENTER
		end
		current_selection
	end

	def self.string_typer(current_string = "", max_limit = 50)
		input = Key.get
		case input
		when Key::BACKSPACE
			current_string.chop!
		when Key::ENTER
			current_string = Key::ENTER
		else
			if current_string.length < max_limit
				current_string = "#{current_string}#{input}"
			end
		end
		current_string
	end

	def self.option_selector(option_list = ["Sample", "List", ":D"], current_selection = 0)
		input = Key.get

		case input
		when Key::UP, Key::LEFT, Key::W, Key::W_LOW, Key::A, Key::A_LOW
			if current_selection > 0
				current_selection -= 1
			else
				current_selection = option_list.length - 1
			end
		when Key::DOWN, Key::RIGHT, Key::S, Key::S_LOW, Key::D, Key::D_LOW
			if current_selection < option_list.length - 1
				current_selection += 1
			else
				current_selection = 0
			end
		when Key::ENTER
			current_selection = Key::ENTER
		end
		current_selection
	end
end