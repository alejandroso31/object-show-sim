#!/usr/bin/env ruby

module Message
	def self.leaderboard(list_of_finalists, list_of_eliminated_contestants)
		delay = 0.5
		delay2 = 1
		number_of_contestants = list_of_eliminated_contestants.length + list_of_finalists.length
		leaderboard = []
		placement = 1

		list_of_finalists.each do |finalist|
			leaderboard.push("#{placement}º - #{finalist.name}")
			placement += 1
		end
		list_of_eliminated_contestants.reverse_each do |contestant|
			leaderboard.push("#{placement}º - #{contestant.name}")
			placement += 1
		end

		title = {
			en: "FINAL LEADERBOARD",
			es: "POSICIONES FINALES"
		}
		indication = {
			en: "THANKS FOR PLAYING! PRESS ANY KEY TO EXIT",
			es: "¡GRACIAS POR JUGAR! PRESIONA CUALQUIER TECLA PARA SALIR"
		}

		Screen.wipe
		Element.title(title[$language])
		Element.divider
		Element.list(leaderboard, delay)
		sleep(delay2)
		Element.divider
		Element.subtitle(indication[$language])
	end
end