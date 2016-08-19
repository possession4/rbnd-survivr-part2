class Game
	attr_accessor :tribes

	def initialize(first_tribe, second_tribe)
		@tribes = [ first_tribe, second_tribe ]
	end

	def add_tribe (tribe)
		@tribes.push(tribe)
	end

	def immunity_challenge
		immunity_challenge_winner = @tribes.sample
		puts_immunity_challenge_winner(immunity_challenge_winner)
		immunity_challenge_winner
	end

	def get_losing_tribe(winning_tribe)
		@tribes.find { |tribe| tribe.name != winning_tribe.name}
	end

	def clear_tribes
		@tribes.clear
	end

	def merge(tribe_name)
		all_members = []
		@tribes.each do |tribe|
			all_members += tribe.members
		end
		mega_tribe = Tribe.new({ name: tribe_name, members: all_members })
		clear_tribes
		add_tribe(mega_tribe)
		mega_tribe
	end

	def individual_immunity_challenge
		individual_immunity_challenge_winner = @tribes.sample().members.sample
		puts_individual_immunity_challenge_winner(individual_immunity_challenge_winner)
		individual_immunity_challenge_winner
	end

	def puts_immunity_challenge_winner(immunity_challenge_winner)
    	puts "Tribe #{immunity_challenge_winner} won the immunity challenge and is safe from elimination."
  	end

  	def puts_individual_immunity_challenge_winner(individual_immunity_challenge_winner)
    	puts "#{individual_immunity_challenge_winner} won the individual immunity challenge and is safe from elimination."
  	end
end
