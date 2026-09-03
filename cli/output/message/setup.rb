#!/usr/bin/env ruby

module Message::Setup
	def self.language
		message = {
			t1: {
				en: "LANGUAGE",
				es: "IDIOMA"
			},
			d1: {
				en: "Select your language",
				es: "Elige tu idioma"
			}
		}
		Screen.wipe
		Element.title(message[:t1][$language])
		Element.description(message[:d1][$language])
	end
end

module Message::Setup::Season
	def self.number_of_contestants(min_limit = 3, max_limit = 64)
		message = {
			t1: {
				en: "NEW SEASON: NUMBER OF CONTESTANTS",
				es: "NUEVA TEMPORADA: NÚMERO DE CONCURSANTES"
			},
			d1: {
				en: "Select the number of contestants you want to set for this season",
				es: "Elige el número de participantes que quieres para esta temporada"
			},
			d2: {
				en: "Minimum: #{min_limit}, Maximum: #{max_limit}",
				es: "Mínimo: #{min_limit}, Máximo: #{max_limit}"
			}
		}
		Screen.wipe
		Element.title(message[:t1][$language])
		Element.description(message[:d1][$language])
		Element.description(message[:d2][$language])
	end

	def self.number_of_finalists(min_limit = 2, max_limit = 2)
		message = {
			t1: {
				en: "NEW SEASON: NUMBER OF FINALISTS",
				es: "NUEVA TEMPORADA: NÚMERO DE FINALISTAS"
			},
			d1: {
				en: "Select the number of finalists you want to set for this season",
				es: "Elige el número de finalistas que quieres para esta temporada"
			},
			d2: {
				en: "Minimum: #{min_limit}, Maximum: #{max_limit}",
				es: "Mínimo: #{min_limit}, Máximo: #{max_limit}"
			}
		}
		Screen.wipe
		Element.title(message[:t1][$language])
		Element.description(message[:d1][$language])
		Element.description(message[:d2][$language])
	end
end

module Message::Setup::Contestant
	def self.name(id)
		message = {
			t1: {
				en: "NEW CONTESTANT: NAME",
				es: "NUEVO CONCURSANTE: NOMBRE"
			},
			d1: {
				en: "Type contestant #{id}'s name",
				es: "Escribe el nombre del concursante #{id}"
			},
			d2: {
				en: "Minimum: 1 character, Maximum 50 characters",
				es: "Mínimo: 1 caracter, Máximo: 50 caracteres"
			}
		}
		Screen.wipe
		Element.title(message[:t1][$language])
		Element.description(message[:d1][$language])
		Element.description(message[:d2][$language])
	end

	def self.gender(name)
		message = {
			t1: {
				en: "NEW CONTESTANT: GENDER",
				es: "NUEVO CONCURSANTE: GÉNERO"
			},
			d1: {
				en: "Select #{name}'s gender",
				es: "Elige el género de #{name}"
			},
			d2: {
				en: "Gender affects pronouns when a character is mentioned",
				es: "El género afecta a los pronombres cuando un personaje es mencionado"
			}
		}
		Screen.wipe
		Element.title(message[:t1][$language])
		Element.description(message[:d1][$language])
		Element.description(message[:d2][$language])
	end

	def self.ability(name)
		message = {
			t1: {
				en: "NEW CONTESTANT: ABILITIES",
				es: "NUEVO CONCURSANTE: HABILIDADES"
			},
			d1: {
				en: "Set #{name}'s abilities",
				es: "Establece las habilidades de #{name}"
			},
			d2: {
				en: "Abilities influence a character's performance in certain challenges",
				es: "Las habilidades influencian el desempeño de un personaje en ciertos desafíos"
			}
		}
		Screen.wipe
		Element.title(message[:t1][$language])
		Element.description(message[:d1][$language])
		Element.description(message[:d2][$language])
	end

	def self.display_info(contestant)
		message = {
			t1: {
				en: "CONTESTANT INFO",
				es: "INFORMACIÓN DEL CONCURSANTE"
			},
			d1: {
				en: "Basic info",
				es: "Información básica"
			},
			d2: {
				en: "Abilities",
				es: "Habilidades"
			},
			id: "ID: #{contestant.id}",
			name: {
				en: "Name: #{contestant.name}",
				es: "Nombre: #{contestant.name}"
			},
			gender: {
				en: "Gender: #{Grammar::Gender.name(contestant.gender)}",
				es: "Género: #{Grammar::Gender.name(contestant.gender)}"
			},
			ability: {
				strength: "#{Grammar::Ability.name(:strength)}: #{contestant.ability[:strength]}",
				resistance: "#{Grammar::Ability.name(:resistance)}: #{contestant.ability[:resistance]}",
				agility: "#{Grammar::Ability.name(:agility)}: #{contestant.ability[:agility]}",
				strategy: "#{Grammar::Ability.name(:strategy)}: #{contestant.ability[:strategy]}",
				discipline: "#{Grammar::Ability.name(:discipline)}: #{contestant.ability[:discipline]}"
			}
		}
		Screen.wipe
		Element.title(message[:t1][$language])
		Element.divider
		Element.description(message[:d1][$language])
		Element.text(message[:id])
		Element.text(message[:name][$language])
		Element.text(message[:gender][$language])
		puts
		Element.description(message[:d2][$language])
		Element.text(message[:ability][:strength])
		Element.text(message[:ability][:resistance])
		Element.text(message[:ability][:agility])
		Element.text(message[:ability][:strategy])
		Element.text(message[:ability][:discipline])
		Element.divider
		Element.controls(["#{Grammar::Controls.key(:any)}: #{Grammar::Controls.name(:continue)}"])
		Key.get
	end
end