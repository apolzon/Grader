class Grade
	include Comparable
	attr_accessor :letter, :modifier
	def initialize(value)
		# separate letter from identifier
		@letter = value[0].chr.upcase
		unless value[1].nil?
			@modifier = (value[1].chr == "+") ? 1 : -1
		else
			@modifier = 0
		end
	end

	def <=>(other)
		if @letter != other.letter
			# We want to flip the polarity of this one (a comes before b, but we want it to be a > b)
			# So we flip the side that self and input are on
			return other.letter <=> @letter
		end
		@modifier <=> other.modifier
	end
end
