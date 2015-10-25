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

	def +(b)
		r=Fraccionarios.new
		if (@den_==b.den_)
			r.num_ = @num_ + b.num_
			r.den_ = @den_
		else
			r.num_ = @num_ * b.den_ + b.num_ * @den_
			r.den_ = @den_ * b.den_
		end
		# r.num_,r.den_ = minimiza(r.num_,r.den_)
		return r
	end
    
	def -(b)
		r =Fraccionarios.new
		if (@den_ == b.den_)
			r.num_=@num_- b.num_
			r.den_=@den_
		else
			r.num_=@num_ * b.den_ - b.num_ * @den_
			r.den_ = @den_ * b.den_
		end
		# r.num_,r.den_ = minimiza(r.num_,r.den_)
		return r
	end


end 
