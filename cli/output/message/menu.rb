#!/usr/bin/env ruby

module Message::Menu
	def self.number_selector(min_limit = 1, max_limit = 50, current_selection = min_limit)
		instructions = {
			en: "UP/RIGHT: INCREASE		DOWN/LEFT: DECREASE		ENTER/SPACE: ACCEPT",
			es: "ARRIBA/DERECHA: AUMENTAR		ABAJO/IZQUIERDA: DECREMENTAR		ENTER/ESPACIO: ACEPTAR"
		}

		puts "< #{current_selection} >".center(Screen.width)
		puts
		Element.divider
		puts instructions[$language].center(Screen.width)
	end

	def self.string_typer(current_string = "")
		puts
		puts "> #{current_string} <".center(Screen.width)
	end

	def self.option_selector(option_list = ["Sample", "List", ":D"], current_selection = 0)
		option_list.each do |option|
			display_list = []

			if option == option_list[current_selection]
				option = "> #{option} <"
			end
			display_list.push(option)

			Element.list(display_list)
		end
	end
end