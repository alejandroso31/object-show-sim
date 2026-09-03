#!/usr/bin/env ruby

module Message::Challenge
	def self.results(id, episode, results)
		delay = 1
		list = []
		position = results.length
		results.reverse_each do |result|
			name = result[:contestant].name
			gender = result[:contestant].gender
			score = result[:score]

			list.push("#{position}º - #{name} (#{result[:score]})")
			position -= 1
		end
		message = {
			d1: {
				en: "#{results[0][:contestant].name} won the challenge and is safe from elimination",
				es: "#{results[0][:contestant].name} ganó el desafío y está a salvo de la eliminación"
			}
		}

		Element.divider
		Element.list(list, delay)
		Element.description(message[:d1][$language])
		Element.controls(["#{Grammar::Controls.key(:any)}: #{Grammar::Controls.name(:continue)}"])
	end
end