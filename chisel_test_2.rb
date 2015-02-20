gem "minitest"
require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "chisel_refactored"

  class ChiselTest < MiniTest::Test

    def test_it_runs
      assert true
    end

    def test_method_that_identifies_h1_to_h6
        chisel = Chisel.new
        text = "#Test,test ##Test,test ###Test,Test"
        assert_equal ("<h1>Test,test</h1> <h2>Test,test</h2> <h3>Test,test</h3>"), chisel.indentify_md_marker(text)
    end


    def test_method_that_identifies_what_md_marker_equals_which_html_tag
      skip
    end

    def test_method_that_will_appropriately_replace_md_marker_with_correct_html_tag
      skip
        chisel = Chisel.new
    end

    def test_it_can_correcly_replace_md_markers_in_a_simple_string
      skip
        chisel = Chisel.new
    end

    def test_it_can_correctly_replace_md_markers_in_a_complex_string
      skip
        chisel = Chisel.new
    end

  end