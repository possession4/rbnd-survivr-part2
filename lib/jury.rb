class Jury
	attr_reader :members

	def initialize
		@members = []
	end

	def add_member(member)
    	@members.push(member)
  	end

  	def cast_votes(finalists)
  		votes = Hash.new
  		return votes
  	end
end