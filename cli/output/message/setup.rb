#!/usr/bin/env ruby

module Message::Setup
	def self.language
		Screen.wipe
		Element.indication("SELECT YOUR LANGUAGE - ELIGE TU IDIOMA")
		Element.divider
	end
end

module Message::Setup::Season
	def self.number_of_contestants(min_limit = 3, max_limit = 64)
		title = {
			en: "SEASON CREATION: NUMBER OF CONTESTANTS",
			es: "CREACIÓN DE TEMPORADA: NÚMERO DE CONCURSANTES"
		}
		description = {
			en: "Select the number of contestants you want to set up for this simulator (min: 2, max: 64)",
			es: "Selecciona el número de concursantes que quieres establecer para este simulador (mínimo: 2, máximo: 64)"
		}
		Screen.wipe
		Element.title(title[$language])
		Element.description(description[$language])
	end

	def self.number_of_finalists(min_limit = 2, max_limit = 2)
		title = {
			en: "SEASON CREATION: NUMBER OF FINALISTS",
			es: "CREACIÓN DE TEMPORADA: NÚMERO DE FINALISTAS"
		}
		description = {
			en: "Select the number of finalists that you want this season to have (min: #{min_limit}, max: #{max_limit})",
			es: "Selecciona el número de finalistas que quieres que tenga esta temporada (mínimo: #{min_limit}, máximo: #{max_limit})"
		}
		Screen.wipe
		Element.title(title[$language])
		Element.description(description[$language])
	end
end

module Message::Setup::Contestant
	def self.name(id)
		title = {
			en: "CONTESTANT CREATION: NAME",
			es: "CREACIÓN DE CONCURSANTE: NOMBRE"
		}
		description = {
			en: "Type contestant #{id}'s name, then press ENTER (min: 1 character, max: 50 characters)",
			es: "Escribe el nombre del concursante #{id} y presiona ENTER (mínimo: 1 caracter, máximo 50 caracteres)"
		}

		Screen.wipe
		Element.title(title[$language])
		Element.description(description[$language])
	end

	def self.gender(name)
		title = {
			en: "CONTESTANT CREATION: GENDER",
			es: "CREACIÓN DE CONCURSANTE: GÉNERO"
		}
		description = {
			en: "Select #{name}'s gender by using de up and down keys, then selecting it with ENTER",
			es: "Selecciona el género de #{name} usando las teclas de arriba y abajo y después elegirlo con ENTER"
		}
		Screen.wipe
		Element.title(title[$language])
		Element.description(description[$language])
	end
end