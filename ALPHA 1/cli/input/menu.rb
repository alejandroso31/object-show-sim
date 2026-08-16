#!/usr/bin/env ruby

module Menu
	def self::number_selector(min_limit = 1, max_limit = 50, current_selection = min_limit)
		case Key::get
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
end