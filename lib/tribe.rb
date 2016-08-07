class Tribe
  attr_accessor :name
  attr_accessor :members

  def initialize(hash)
  	@name = hash[:name]
  	@members = hash[:members]
  	puts "#{@name}"
  end

  def tribal_council(immune)
  	non_immune_members = @members.select { |m| m != immune[:immune] }
  	voted_off_member = non_immune_members.first
  	@members.delete(voted_off_member)
  	voted_off_member
  end

  def to_s
    @name
  end
end