#!/usr/bin/env ruby

module Menu
	def self.typer(config = {string: "", max_limit: 50})
		string = config[:string]
		max_limit = config[:max_limit]

		key = Key.get(:typer)
		done = false

		case key
		when :backspace
			string.chop!
		when :enter
			done = true
		else
			if string.length < max_limit
				string = "#{string}#{Key.letter(key)}"
			end
		end
		{
			string: string,
			done: done
		}
	end

	def self.selector(config = {selection: 0, labels: [], values: [], min_limits: [], max_limits: []})
		selection = config[:selection]
		labels = config[:labels]
		values = config[:values]
		min_limits = config[:min_limits]
		max_limits = config[:max_limits]

		key = Key.get(:selector)
		done = false

		case key
		when :left
			if values.length > 0
				if values[selection] > min_limits[selection]
					values[selection] -=1
				end
			end
		when :right
			if values.length > 0
				if values[selection] < max_limits[selection]
					values[selection] +=1
				end
			end
		when :up
			if selection > 0
				selection -= 1
			elsif selection <= 0
				selection = labels.length - 1
			end
		when :down
			if selection < labels.length - 1
				selection += 1
			elsif selection >= labels.length - 1
				selection = 0
			end
		when :enter
			done = true
		end

		{
			values: values,
			selection: selection,
			done: done
		}
	end
end