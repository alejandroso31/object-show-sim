#!/usr/bin/env ruby
module Message::Elimination
	def self.start_elimination(current_episode, shuffled_list, immune_contestant)
		delay = 1.5
		status_list = []
		status = {
			safe: {
				en: "SAFE",
				es: "A SALVO"
			},
			eliminated: {
				en: "ELIMINATED",
				es: "ELIMINAD#{Grammar::Gender.suffix(shuffled_list[-1].gender).upcase}"
			}
		}

		shuffled_list.each do |contestant|
			if contestant.id == shuffled_list[-1].id
				status_list.push("#{contestant.name} - #{status[:eliminated][$language]}")
			else
				status_list.push("#{contestant.name} - #{status[:safe][$language]}")
			end
		end

		title = {
			en: "EPISODE #{current_episode} - ELIMINATION",
			es: "EPISODIO #{current_episode} - ELIMINACIÓN"
		}
		description = {
			en: "#{shuffled_list.length} contestants are up for elimination, the viewers will vote for any of them to be eliminated",
			es: "#{shuffled_list.length} concursantes irán a la eliminación, los espectadores van a votar por cualquiera de ellos para eliminarlos"
		}
		description2 = {
			en: "#{immune_contestant.name} won immunity last time, so #{Grammar::Gender.subject_pronoun(immune_contestant.gender)}'s safe",
			es: "#{immune_contestant.name} ganó la inmunidad la vez pasada, así que, #{Grammar::Gender.subject_pronoun(immune_contestant.gender)} está a salvo"
		}
		indication = {
			en: "PRESS ANY KEY TO SEE WHO'S SAFE AND WHO'S NOT:",
			es: "PRESIONA CUALQUIER TECLA PARA VER QUIÉN ESTÁ A SALVO Y QUIÉN NO:"
		}
		description3 = {
			en: "#{shuffled_list[-1].name} has been eliminated by the viewers and will be treated with TLC!",
			es: "¡#{shuffled_list[-1].name} ha sido eliminad#{Grammar::Gender.suffix(shuffled_list[-1].gender)} por los espectadores y será tratad#{Grammar::Gender.suffix(shuffled_list[-1].gender)} con TLC!"
		}
		indication2 = {
			en: "PRESS ANY KEY TO SEE EPISODE #{current_episode} CHALLENGE",
			es: "PRESIONA CUALQUIER TECLA PARA VER EL DESAFÍO DEL EPISODIO #{current_episode}"
		}

		Screen.wipe
		Element.title(title[$language])
		Element.description(description[$language])
		Element.description(description2[$language])
		Element.subtitle(indication[$language])
		Element.divider
		Key.get
		Element.list(status_list, delay)
		sleep(delay)
		Element.description(description3[$language])
		Element.subtitle(indication2[$language])
	end
end