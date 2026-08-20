#!/usr/bin/env ruby

module Setup::Contestant
	def self.name(id)
		awaiting_input = true
		input = ""
		name = ""
		min_limit = 1
		max_limit = 50

		while awaiting_input
			Message::Setup::Contestant.name(id)
			Message::Menu.string_typer(input)
			input = Menu.string_typer(input, max_limit)

			case input
			when Key::ENTER
				if name.length >= min_limit	
					awaiting_input = false
				else
					input = name
				end
			else
				name = input
			end
		end
		name
	end

	def self.gender(name)
		genders = {
			nonbinary: {
				name: {
					en: "Non-binary",
					es: "No binario"
				},
				pronoun1: {
					en: "they",
					es: "elle"
				},
				pronoun2: {
					en: "them",
					es: "elle"
				},
				suffix: {
					en: "",
					es: "e"
				}
			},

			male: {
				name: {
					en: "Male",
					es: "Masculino"
				},
				pronoun1: {
					en: "he",
					es: "él"
				},
				pronoun2: {
					en: "him",
					es: "él"
				},
				suffix: {
					en: "",
					es: "o"
				},
			},

			female: {
				name: {
					en: "Female",
					es: "Femenino"
				},
				pronoun1: {
					en: "she",
					es: "ella"
				},
				pronoun2: {
					en: "her",
					es: "ella"
				},
				suffix: {
					en: "",
					es: "a"
				},
			}
		}

		list_of_genders = [genders[:nonbinary][:name][$language], genders[:male][:name][$language],genders[:female][:name][$language]]

		awaiting_input = true
		input = ""
		current_selection = 0
		while awaiting_input
			Message::Setup::Contestant.gender(name)
			Message::Menu.option_selector(list_of_genders, current_selection)
			input = Menu.option_selector(list_of_genders, current_selection)
			
			case input
			when Key::ENTER
				awaiting_input = false
			else
				current_selection = input
			end
		end

		case current_selection
		when 0
			gender = genders[:nonbinary]
		when 1 
			gender = genders[:male]
		when 2
			gender = genders[:female]
		end
		gender
	end
end