#!/usr/bin/env ruby
module Message end
module Message::Setup end
require_relative "menu"
require_relative "setup"
require_relative "challenge"
require_relative "elimination"
require_relative "finale"
require_relative "leaderboard"