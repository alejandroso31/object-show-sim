#!/usr/bin/env ruby

module Message::Menu
	def self.typer(current_string = "")
		controls = [
			"#{Grammar::Controls.key(:any)}: #{Grammar::Controls.name(:type)}",
			"#{Grammar::Controls.key(:backspace)}: #{Grammar::Controls.name(:delete)}",
			"#{Grammar::Controls.key(:enter)}: #{Grammar::Controls.name(:accept)}"
		]
		puts
		puts
		Element.text("> #{current_string} <".center(Screen.width))
		Element.controls(controls)
	end

	def self.selector(config = {selection: 0, labels: [], values: []})
		selection = config[:selection]
		labels = config[:labels]
		values = config[:values]

		controls = []
		iteration = 0
		display = []

		if labels.length == 1
			controls = [
				"#{Grammar::Controls.key(:left)}/A: #{Grammar::Controls.name(:decrease)}",
				"#{Grammar::Controls.key(:right)}/D: #{Grammar::Controls.name(:increase)}",
				"#{Grammar::Controls.key(:enter)}/#{Grammar::Controls.key(:space)}: #{Grammar::Controls.name(:accept)}"
			]
		elsif labels.length > 1 && values.length == 0
			controls = [
				"#{Grammar::Controls.key(:up)}/W/#{Grammar::Controls.key(:down)}/S: #{Grammar::Controls.name(:select)}",
				"#{Grammar::Controls.key(:enter)}/#{Grammar::Controls.key(:space)}: #{Grammar::Controls.name(:accept)}"
			]
		elsif labels.length > 1 && values.length != 0
			controls = [
				"#{Grammar::Controls.key(:up)}/W/#{Grammar::Controls.key(:down)}/S: #{Grammar::Controls.name(:select)}",
				"#{Grammar::Controls.key(:left)}/A: #{Grammar::Controls.name(:decrease)}",
				"#{Grammar::Controls.key(:right)}/D: #{Grammar::Controls.name(:increase)}",
				"#{Grammar::Controls.key(:enter)}/#{Grammar::Controls.key(:space)}: #{Grammar::Controls.name(:accept)}"
			]
		end

		labels.each do |label|
			###SIMPLE NUMBER SELECTOR MODE
			if labels.length == 1 && label == ""
				label = "< #{values[iteration]} >"
			elsif labels.length == 1 && label != ""
				label = "#{label}: < #{values[iteration]} >"
			end

			###SIMPLE OPTION SELECTOR MODE
			if labels.length > 1 && values.length == 0 && label == labels[selection]
				label = "> #{label} <"
			end

			###ADVANCED VALUE SETTER MODE
			if labels.length > 1 && values.length > 0 && label == labels[selection]
				label = "< #{label}: #{values[iteration]} >"
			elsif labels.length > 1 && values.length > 0 && label != labels[selection]
				label = "#{label}: #{values[iteration]}"
			end

			display.push(label)
			iteration += 1
		end

		puts
		puts
		Element.list(display)
		Element.controls(controls)
	end
end