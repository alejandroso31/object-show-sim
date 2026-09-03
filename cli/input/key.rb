#!/usr/bin/env ruby

module Key
	def self.letter(letter = :a)
		letters = {
			a: "a",
			a_up: "A",
			a_acute: "á",
			a_up_acute: "Á",
			a_grave: "à",
			a_up_grave: "À",
			a_tilde: "ã",
			a_up_tilde: "Ã",
			b: "b",
			b_up: "B",
			c: "c",
			c_up: "C",
			d: "d",
			d_up: "D",
			e: "e",
			e_up: "E",
			e_acute: "é",
			e_up_acute: "É",
			e_grave: "è",
			e_up_grave: "È",
			f: "f",
			f_up: "F",
			g: "g",
			g_up: "G",
			h: "h",
			h_up: "H",
			i: "i",
			i_up: "I",
			i_acute: "í",
			i_up_acute: "Í",
			i_grave: "ì",
			i_up_grave: "Ì",
			j: "j",
			j_up: "J",
			k: "k",
			k_up: "K",
			l: "l",
			l_up: "L",
			m: "m",
			m_up: "M",
			n: "n",
			n_up: "N",
			n_tilde: "ñ",
			n_up_tilde: "Ñ",
			o: "o",
			o_up: "O",
			o_acute: "ó",
			o_up_acute: "Ó",
			o_grave: "ò",
			o_up_grave: "Ò",
			o_tilde: "õ",
			o_up_tilde: "Õ",
			p: "p",
			p_up: "P",
			q: "q",
			q_up: "Q",
			r: "r",
			r_up: "R",
			s: "s",
			s_up: "S",
			t: "t",
			t_up: "T",
			u: "u",
			u_up: "U",
			u_acute: "ú",
			u_up_acute: "Ú",
			u_grave: "ù",
			u_up_grave: "Ù",
			u_dieresis: "ü",
			u_up_dieresis: "Ü",
			v: "v",
			v_up: "V",
			w: "w",
			w_up: "W",
			x: "x",
			x_up: "X",
			y: "y",
			y_up: "Y",
			z: "z",
			z_up: "Z",
			zero: "0",
			one: "1",
			two: "2",
			three: "3",
			four: "4",
			five: "5",
			six: "6",
			seven: "7",
			eight: "8",
			nine: "9",
			space: " "
		}

		if letters.key?(letter)
			character = letters[letter]
		else
			character = ""
		end

		character
	end

	def self.get(mode = :simple)
		input = STDIN.getch
		if input == "\e"
			input << STDIN.getch << STDIN.getch
		end
		if input == "\x00" || input == "\xE0"
			input = "#{input}#{(STDIN.getch).ord}"
		end

		case mode
		when :simple
			key = input
		when :selector
			case input
			when "w", "W", "\e[A", "\x0072", "\xE072"
				key = :up
			when "s", "S", "\e[B", "\x0080", "\xE080"
				key = :down
			when "d", "D", "\e[C", "\x0077", "\xE077"
				key = :right
			when "a", "A", "\e[D", "\x0075", "\xE075"
				key = :left
			when "\r", "\n", " "
				key = :enter
			when "\x7F", "\x08"
				key = :backspace
			end
		when :typer
			case input
			when "\r", "\n"
				key = :enter
			when "\x7F", "\x08"
				key = :backspace
			when "a"
				key = :a
			when "A"
				key = :a_up
			when "á"
				key = :a_acute
			when "Á"
				key = :a_up_acute
			when "à"
				key = :a_grave
			when "À"
				key = :a_up_grave
			when "ã"
				key = :a_tilde
			when "Ã"
				key = :a_up_tilde
			when "b"
				key = :b
			when "B"
				key = :b_up
			when "c"
				key = :c
			when "C"
				key = :c_up
			when "ç"
				key = :c_cedilla
			when "Ç"
				key = :c_up_cedilla
			when "d"
				key = :d
			when "D"
				key = :d_up
			when "e"
				key = :e
			when "E"
				key = :e_up
			when "é"
				key = :e_acute
			when "É"
				key = :e_up_acute
			when "è"
				key = :e_grave
			when "È"
				key = :e_up_grave
			when "f"
				key = :f
			when "F"
				key = :f_up
			when "g"
				key = :g
			when "G"
				key = :g_up
			when "h"
				key = :h
			when "H"
				key = :h_up
			when "i"
				key = :i
			when "I"
				key = :i_up
			when "í"
				key = :i_acute
			when "Í"
				key = :i_up_acute
			when "ì"
				key = :i_grave
			when "Ì"
				key = :i_up_grave
			when "j"
				key = :j
			when "J"
				key = :j_up
			when "k"
				key = :k
			when "K"
				key = :k_up
			when "l"
				key = :l
			when "L"
				key = :l_up
			when "m"
				key = :m
			when "M"
				key = :m_up
			when "n"
				key = :n
			when "N"
				key = :n_up
			when "ñ"
				key = :n_tilde
			when "Ñ"
				key = :n_up_tilde
			when "o"
				key = :o
			when "O"
				key = :o_up
			when "ó"
				key = :o_acute
			when "Ó"
				key = :o_up_acute
			when "ò"
				key = :o_grave
			when "Ò"
				key = :o_up_grave
			when "õ"
				key = :o_tilde
			when "Õ"
				key = :o_up_tilde
			when "p"
				key = :p
			when "P"
				key = :p_up
			when "q"
				key = :q
			when "Q"
				key = :q_up
			when "r"
				key = :r
			when "R"
				key = :r_up
			when "s"
				key = :s
			when "S"
				key = :s_up
			when "t"
				key = :t
			when "T"
				key = :t_up
			when "u"
				key = :u
			when "U"
				key = :u_up
			when "ú"
				key = :u_acute
			when "Ú"
				key = :u_up_acute
			when "ù"
				key = :u_grave
			when "Ù"
				key = :u_up_grave
			when "ü"
				key = :u_dieresis
			when "Ü"
				key = :u_up_dieresis
			when "v"
				key = :v
			when "V"
				key = :v_up
			when "w"
				key = :w
			when "W"
				key = :w_up
			when "x"
				key = :x
			when "X"
				key = :x_up
			when "y"
				key = :y
			when "Y"
				key = :y_up
			when "z"
				key = :z
			when "Z"
				key = :z_up
			when "0"
				key = :zero
			when "1"
				key = :one
			when "2"
				key = :two
			when "3"
				key = :three
			when "4"
				key = :four
			when "5"
				key = :five
			when "6"
				key = :six
			when "7"
				key = :seven
			when "8"
				key = :eight
			when "9"
				key = :nine
			when " "
				key = :space
			when "\r", "\n"
				key = :enter
			when "\x7F", "\x08"
				key = :backspace
			end
		end
		key
	end
end