class Game
	attr_accessor :tribes

	def initialize(first_tribe, second_tribe)
		@tribes = [ first_tribe, second_tribe ]
	end

	def add_tribe (tribe)
		@tribes.push(tribe)
	end

	def immunity_challenge
		@tribes.shuffle![0]
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
	end

	def individual_immunity_challenge
		@tribes.first().members.shuffle![0]
	end
end