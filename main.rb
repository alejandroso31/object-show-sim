#!/usr/bin/env ruby
require_relative "core/index"
require_relative "cli/index"
Setup.language

wants_to_keep_playing = true
while wants_to_keep_playing
	season = Season.new
	season.mainloop
	season.end
	wants_to_keep_playing = false
end