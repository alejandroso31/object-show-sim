#!/usr/bin/env ruby

module Message::Finale
	def self.start_finale(current_episode, list_of_finalists, shuffled_list)
		delay = 2
		delay2 = 0.5
		finalist_names = ""
		conjunction = {
			en: "and",
			es: "y"
		}

		list_of_finalists.each do |finalist|
			if finalist.id == list_of_finalists[0].id
				finalist_names = finalist.name
			elsif finalist.id == list_of_finalists[-1].id
				finalist_names = "#{finalist_names} #{conjunction[$language]} #{finalist.name}"
			else
				finalist_names = "#{finalist_names}, #{finalist.name}"
			end
		end

		title = {
			en: "EPISODE #{current_episode} - SEASON FINALE",
			es: "EPISODIO #{current_episode} - FINAL DE TEMPORADA"
		}
		description = {
			en: "After many challenges and eliminations, our final #{list_of_finalists.length} contestants: #{finalist_names} will be voted on by the viewers to see which one of them gets to win this season!",
			es: "¡Después de tantos desafíos y eliminaciones, los espectadores votarán por nuestros #{list_of_finalists.length} finalistas: #{finalist_names} para ver cuál de ellos gana esta temporada!"			
		}
		indication = {
			en: "PRESS ANY KEY TO SEE THE RESULT!:",
			es: "¡PRESIONA CUALQUIER TECLA PARA VER EL RESULTADO!:"
		}
		description2 = {
			en: "AND THE SEASON WINNER IS...",
			es: "Y QUIEN GANA LA TEMPORADA ES..."
		}
		description3 = {
			en: "#{shuffled_list[0].name}!",
			es: "¡#{shuffled_list[0].name}!"
		}
		description4 = {
			en: "#{shuffled_list[0].name} has won this season! #{shuffled_list[1].name} places second, but leaves with nothing.",
			es: "¡#{shuffled_list[0].name} ha ganado esta temporada! #{shuffled_list[1].name} queda en segundo lugar, pero se va sin nada."
		}
		indication2 = {
			en: "PRESS ANY KEY TO SEE THE LEADERBOARD",
			es: "PRESIONA CUALQUIER TECLA PARA VER LA TABLA DE POSICIONES"
		}

		Screen.wipe
		Element.title(title[$language])
		Element.description(description[$language])
		Element.indication(indication[$language])
		Element.divider
		Key.get
		Element.description(description2[$language])
		sleep(delay)
		puts "...".center(Screen.width)
		sleep(delay)
		Element.description(description3[$language])
		sleep(delay2)
		Element.description(description4[$language])
		Element.indication(indication2[$language])
	end
end