#pruebas unitarias

require "./lib/fraccionarios.rb"
require "./lib/gcd.rb"
require "test/unit"

class Test_Fraciones < Test::Unit::TestCase

	def setup
	   @racional1 = Fraccionarios.new(1,2) 
	   @racional2 = Fraccionarios.new(2,4)
	end

	def teardown
	end

	def teardown 
	end

	def test_simple 
		assert_equal("1/2", @racional1.to_s)
		assert_equal("2/4", @racional2.to_s)
		assert_not_equal("14/45", @racional1.to_s) 
		assert_not_equal("14/45", @racional2.to_s)
	end

	def test_multiplicacion 
	   assert_equal("1/4",(@racional1 * @racional2).to_s)
        end

	def test_division
	   assert_equal("1/1",(@racional1 / @racional2).to_s)
	end


end
