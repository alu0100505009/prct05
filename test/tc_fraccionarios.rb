#pruebas unitarias

require "./lib/fraccionarios.rb"
require "./lib/gcd.rb"
require "test/unit"

class Test_Fraciones < Test::Unit::TestCase

	def setup
	   @racional1 = Fraccionarios.new(9,15) 
	   @racional2 = Fraccionarios.new(5,12)
	end

	def teardown
	end

	def test_simple 
	   assert_equal("9/15", @racional1.to_s) 
      assert_equal("5/12", @racional2.to_s) 
 	   assert_not_equal("23/45", @racional1.to_s) 
      assert_not_equal("14/98", @racional2.to_s) 
	end

	def test_suma #para realizar solo las pruebas con la operacion suma
		assert_equal("61/60",(@racional1 + @racional2).to_s)
	end

end
