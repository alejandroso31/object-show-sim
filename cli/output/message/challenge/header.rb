#!/usr/bin/env ruby

module Message::Challenge
	def self.header(episode)
		message = {
			t1: {
				en: "EPISODE #{episode} - Challenge",
				es: "EPISODIO #{episode} - Desafío"
			}
		}
		Screen.wipe
		Element.title(message[:t1][$language])
	end
end