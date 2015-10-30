require "./lib/gcd.rb"
require "./lib/mcm.rb"

class Fraccionarios

	attr_writer :num, :den	
	attr_reader :num, :den


	def initialize (num,den)
		if den != 0
			@den=den
		else
			puts "No puede poner un denominardor igual a cero(0)"
		end
			@num = num 
	end

	def to_s 
		"#{num}/#{den}"
	end

	def *(b)
		r = Fraccionarios.new(@num*b.num , @den*b.den)
		min(r)
	end

	def /(b)
		r = Fraccionarios.new(@num*b.den , @den*b.num)
		min(r)
	end

	def min(b) 
		aux = gcd(b.num , b.den)
		Fraccionarios.new(b.num/aux , b.den/aux) 
	end

end 
