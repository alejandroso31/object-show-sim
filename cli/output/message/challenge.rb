#!/usr/bin/env ruby

module Message::Challenge
	def self.start_generic_challenge(current_episode, shuffled_list)
		next_episode = current_episode + 1
		placement = shuffled_list.length
		delay = 1.5
		placement_list = []

		title = {
			en: "EPISODE #{current_episode} - CHALLENGE",
			es: "EPISODIO #{current_episode} - DESAFÍO"
		}
		description = {
			en: "All #{shuffled_list.length} contestants must compete in a 2KM marathon, whoever comes first wins immunity and is safe from elimination",
			es: "Todos los #{shuffled_list.length} concursantes deben competir en una maratón de 2KM, quien termine primero, gana la inmunidad y queda a salvo de la eliminación"
		}
		indication = {
			en: "PRESS ANY KEY TO SEE EVERYONE'S RESULTS:",
			es: "PRESIONA CUALQUIER TECLA PARA VER LOS RESULTADOS DE TODOS:"
		}
		description2 = {
			en: "#{shuffled_list[0].name} won immunity! Everyone else is up for elimination",
			es: "¡#{shuffled_list[0].name} ganó la inmunidad! Todos los demás irán a la eliminación"
		}
		indication2 = {
			en: "PRESS ANY KEY TO SEE EPISODE #{next_episode} ELIMINATION",
			es: "PRESIONA CUALQUIER TECLA PARA VER LA ELIMINACIÓN DEL EPISODIO #{next_episode}"
		}

		shuffled_list.reverse_each do |contestant|
			list_element = "#{placement}º - #{contestant.name}"
			placement_list.push(list_element)
			placement-=1	
		end

		Screen.wipe
		Element.title(title[$language])
		Element.description(description[$language])
		Element.indication(indication[$language])
		Element.divider
		Key.get
		Element.list(placement_list, delay)
		sleep(delay)
		Element.divider
		Element.description(description2[$language])
		Element.indication(indication2[$language])
	end
end