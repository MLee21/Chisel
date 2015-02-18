gem "minitest"
require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "chisel"

class ChiselTest < MiniTest::Test

	def test_it_runs
		assert true
	end

	def test_chisel_exists
		assert Chisel 
	end	
end