#!/usr/bin/env ruby

class Person
	attr_reader :id, :name, :gender

	def initialize(id, name, gender)
		@id = id
		@name = name
		@gender = gender
	end
end