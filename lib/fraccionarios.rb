class Fraccionarios


	attr_writer :num, :den	
	attr_reader :num, :den


	def initialize(num, den)
		@num_, @den_ = num, den
	end

	def to_s
		"#{@num_}/#{@den_}"
	end

	def to_f 
        @num_.to_f/@den_.to_f
   end

	def -@
        Fraccionarios.new(-@num_,@den_)
   end



end 
