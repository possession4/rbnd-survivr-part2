require 'colorize'
class Tribe
  attr_accessor :name
  attr_accessor :members

  def initialize(hash)
  	@name = hash[:name]
  	@members = hash[:members]
    puts_tribemates(@name, @members)
  end

  def tribal_council(immune)
  	non_immune_members = @members.select { |m| m != immune[:immune] }
  	voted_off_member = non_immune_members.first
    puts_voted_off_member(voted_off_member)
  	@members.delete(voted_off_member)
    puts_remaining_tribemates
  	voted_off_member
  end

  def to_s
    @name
  end

  def puts_tribemates(name, members)
    puts "The tribemates for tribe #{name.colorize(:blue)} are: #{members.join(", ")}\n"
  end

  def puts_remaining_tribemates
    puts "Remaining tribemates on tribe #{@name.colorize(:blue)} are: #{@members.join(", ")}\n\n"
  end

  def puts_voted_off_member(voted_off_member)
    puts "#{voted_off_member.to_s.colorize(:red)} was voted off the island."
  end


end