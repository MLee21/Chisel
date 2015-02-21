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
		assert_equal '<h1>My Life in Desserts</h1>', chisel.header_1(document)
	end	

	def test_header_2_is_substituted
		chisel = Chisel.new
		document = '##Chapter 1: The Beginning'
		assert_equal '<h2>Chapter 1: The Beginning</h2>',chisel.header_2(document)
	end

	def test_paragraph_has_html_tags
		chisel = Chisel.new
		text = "This is the text."
 		assert_equal "<p>This is the text.</p>", chisel.paragraph(text)
	end	

	def test_asterisks_are_substituted
		chisel = Chisel.new
		text = "This is *the* **Text**."
 		assert_equal "This is <em>the</em> <strong>Text</strong>.", chisel.asterisks(text)
	end	

end