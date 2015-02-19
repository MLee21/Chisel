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

	def test_header_1_is_substituted
		chisel = Chisel.new
		document = '#My Life in Desserts'
		assert_equal '<h1>My Life in Desserts</h1>', chisel.header_1
	end	

	def it_has_a_header_2
		chisel = Chisel.new
		assert_equal '##Chapter 1: The Beginning', chisel.header_2
	end

	def test_header_2_is_substituted
		chisel = Chisel.new
		document_part_two = '##Chapter 1: The Beginning'
		assert_equal '<h2>Chapter 1: The Beginning</h2>',chisel.header_2
	end

	def test_paragraph_has_html_tags
		chisel = Chisel.new
		p2 = '"You just *have* to try the cheesecake," he said. "Ever since it appeared in
 		**Food & Wine** this place has been packed every night."'
 		assert_equal '<p>"You just *have* to try the cheesecake," he said. "Ever since it appeared in
 		**Food & Wine** this place has been packed every night."</p>', chisel.paragraph
	end	
end