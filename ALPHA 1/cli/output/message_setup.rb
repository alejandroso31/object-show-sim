#!/usr/bin/env ruby

module Message
	module Setup
		def self::number_of_contestants
			Screen.wipe
			puts "=== SETUP: NUMBER OF CONTESTANTS ==="
			puts
			puts "- Select the number of contestants you want to set up for this simulator -"
			puts
			puts
		end

		def self::contestant_name(id)
			Screen.wipe
			puts "=== SETUP: CONTESTANT CREATION ==="
			puts
			puts "- Type contestant #{id}'s name, then press ENTER -"
			puts
			puts
		end

		def self::contestant_gender(name)
			Screen.wipe
			puts "=== SETUP: CONTESTANT CREATION ==="
			puts
			puts "- Select #{name}'s gender by pressing its corresponding number' -"
			puts
			puts "0: None/Nonbinary"
			puts "1: Male"
			puts "2: Female"
			puts
			puts
		end
	end
end