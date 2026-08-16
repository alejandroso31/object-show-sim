#!/usr/bin/env ruby

module Key
	#NUMBERS#
	self::ZERO = "0"
	self::ONE = "1"
	self::TWO = "2"
	self::THREE = "3"
	self::FOUR = "4"
	self::FIVE = "5"
	self::SIX = "6"
	self::SEVEN = "7"
	self::EIGHT = "8"
	self::NINE = "9"

	#UPPERCASE LETTERS#
	self::A = "A"
	self::D = "D"
	self::S = "S"
	self::W = "W"

	#LOWERCASE LETTERS#
	self::A_LOW = "a"
	self::D_LOW = "d"
	self::S_LOW = "s"
	self::W_LOW = "w"

	#ARROWS#
	self::UP = "\e[A"
	self::DOWN = "\e[B"
	self::RIGHT = "\e[C"
	self::LEFT = "\e[D"

	#SPECIAL#
	self::ENTER = "\r"
	self::BACKSPACE = "\x7F"
	self::SPACE = " "

	def self::get
		key = STDIN.getch

		if key == "\e"
			key << STDIN.getch << STDIN.getch
		end
		if key == "\x08"
			key = "\x7F"
		end
		if key == "\n"
			key = "\r"
		end
		key
	end
end