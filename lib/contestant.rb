require 'colorize'
class Contestant
	attr_reader :name

	def initialize(name)
		@name = name.capitalize.colorize(:green)
	end

	def to_s
    	@name
  	end
end