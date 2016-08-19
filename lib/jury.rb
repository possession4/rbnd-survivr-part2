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
    votes = Hash[finalists.map { |finalist| [finalist, 0] }]
    @members.each do |member|
      finalist = finalists.sample
      puts "#{member.name} cast their vote for #{finalist}"
      votes[finalist] += 1
    end
		votes
	end

  def report_votes(final_votes)
    final_votes.each do |key, value|
      puts "Finalist: #{key}, Votes: #{value}"
    end
  end

  def announce_winner(final_votes)
    winner = final_votes.max_by { |key, value| value }
    puts "\nThe winner is #{winner[0].to_s.colorize(:yellow)}!"
    winner[0]
  end
  
  
end