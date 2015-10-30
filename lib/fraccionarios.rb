require "./lib/gcd.rb"
require "./lib/mcm.rb"

class Fraccionarios

	attr_writer :num, :den	
	attr_reader :num, :den


	def initialize (num,den) #metodo para inicializar los objetos
		if den != 0
			@den=den
		else
			puts "No puede poner un denominardor igual a cero(0)"
		end
			@num = num #@varaibles de instancia         
	end

	def to_s 
		"#{num}/#{den}"
	end

	def *(nuevo) #metodo para realizar la multiplicacion de dos fraciones pasamos un objeto como parametro
		resultado = Fraccionarios.new(@num*nuevo.num , @den*nuevo.den)
		min(resultado)
	end

	def /(nuevo) #metodo para realizar la division de dos fracciones pasamos un objeto como parametro
		resultado = Fraccionarios.new(@num*nuevo.den , @den*nuevo.num)
		min(resultado)
	end

	def min(nuevo) #metodo para realizar la simplificacion del resultado de las operaciones
		aux = gcd(nuevo.num , nuevo.den)
		Fraccionarios.new(nuevo.num/aux , nuevo.den/aux) 
	end

end 
