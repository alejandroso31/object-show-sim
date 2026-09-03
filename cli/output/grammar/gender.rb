#!/usr/bin/env ruby
module Grammar::Gender
	def self.name(gender)
		names = {
			nonbinary: {
				en: "Non-binary",
				es: "No binario"
			},
			male: {
				en: "Male",
				es: "Masculino"
			},
			female: {
				en: "Female",
				es: "Femenino"
			}
		}
		names[gender][$language]
	end

	def self.subject_pronoun(gender)
		subject_pronouns = {
			nonbinary: {
				en: "they",
				es: "elle"
			},
			male: {
				en: "he",
				es: "él"
			},
			female: {
				en: "she",
				es: "ella"
			}
		}
		subject_pronouns[gender][$language]
	end

	def self.object_pronoun(gender)
		object_pronouns = {
			nonbinary: {
				en: "them",
				es: "elle"
			},
			male: {
				en: "him",
				es: "él"
			},
			female: {
				en: "her",
				es: "ella"
			}
		}
		object_pronouns[gender][$language]
	end

	def self.possessive_pronoun(gender)
		possessive_pronouns = {
			nonbinary: {
				en: "their",
				es: ""
			},
			male: {
				en: "his",
				es: ""
			},
			female: {
				en: "her",
				es: ""
			}
		}
		possessive_pronouns[gender][$language]
	end

	def self.be_past(gender)
		be = {
			nonbinary: {
				en: "were",
				es: ""
			},
			male: {
				en: "was",
				es: ""
			},
			female: {
				en: "was",
				es: ""
			}
		}
		be[gender][$language]
	end

	def self.be_present(gender)
		be = {
			nonbinary: {
				en: "are",
				es: ""
			},
			male: {
				en: "is",
				es: ""
			},
			female: {
				en: "is",
				es: ""
			}
		}
		be[gender][$language]
	end

	def self.suffix(gender)
		suffixes = {
			nonbinary: {
				en: "",
				es: "e"
			},
			male: {
				en: "",
				es: "o"
			},
			female: {
				en: "",
				es: "a"
			}
		}
		suffixes[gender][$language]
	end
end