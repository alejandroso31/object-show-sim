#!/usr/bin/env ruby

class Contestant < Person
	attr_accessor :status

	def initialize(id, name, gender)
		super(id, name, gender)
		@status = "Competing"
	end
end