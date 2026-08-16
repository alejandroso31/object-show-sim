#!/usr/bin/env ruby
require_relative "core/index"
require_relative "cli/index"

number_of_contestants = Setup::number_of_contestants
list_of_contestants = Setup::list_of_contestants(number_of_contestants)
list_of_eliminated_contestants = []
episode = 1

while list_of_contestants.length > 2
	immune_contestant = Challenge::start(episode, list_of_contestants)
	episode += 1

	eliminated_contestant = Elimination::start(episode, list_of_contestants, immune_contestant)
	list_of_eliminated_contestants.push(eliminated_contestant)

	list_of_contestants.reject! {|contestant| contestant.id == eliminated_contestant.id}
end

runner_up = Finale::start(list_of_contestants)
list_of_eliminated_contestants.push(runner_up)
list_of_contestants.reject! {|contestant| contestant.id == runner_up.id}
winner = list_of_contestants[0]

Message::positions(winner, list_of_eliminated_contestants)
Key::get
Screen.wipe