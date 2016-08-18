require 'colorize'
class Jury
	attr_accessor :members

	def initialize
		@members = []
	end

	def add_member(member)
    	@members.push(member)
  end

	def cast_votes(finalists)
    votes = Hash[finalists.map { |f| [f, 0] }]
    @members.each do |member|
      finalist = finalists.shuffle![0]
      puts "#{member.name} cast their vote for #{finalist}"
      votes[finalist] += 1
    end
		votes
	end

  def report_votes(final_votes)
    final_votes.each do |k, v|
      puts "Finalist: #{k}, Votes: #{v}"
    end
  end

  def announce_winner(final_votes)
    winner = final_votes.max_by { |k, v| v }
    puts "\nThe winner is #{winner[0].to_s.colorize(:yellow)}!"
    winner[0]
  end
  
  
end