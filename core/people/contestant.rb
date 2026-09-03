#!/usr/bin/env ruby

class Contestant < Person
	attr_reader :status, :ability

	def initialize(id, name, gender, ability = 0)
		super(id, name, gender)
		@ability = ability
		@status = :competing
	end
end