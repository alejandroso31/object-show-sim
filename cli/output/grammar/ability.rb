#!/usr/bin/env ruby
module Grammar::Ability
	def self.name(gender)
		names = {
			strength: {
				en: "Strength",
				es: "Fuerza"
			},
			resistance: {
				en: "Resistance",
				es: "Resistencia"
			},
			agility: {
				en: "Agility",
				es: "Agilidad"
			},
			strategy: {
				en: "Strategy",
				es: "Estrategia"
			},
			discipline: {
				en: "Discipline",
				es: "Disciplina"
			}
		}
		names[gender][$language]
	end
end