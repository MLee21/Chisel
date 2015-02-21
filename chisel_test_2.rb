gem "minitest"
require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "chisel_refactored"

  class ChiselTest < MiniTest::Test

    def test_it_runs
      assert true
    end

    def test_deletes_md_markers_adds_open_tag_and_closing_tag
      chisel = Chisel.new
      text = "#Test,test"
      md_marker = "#"
      open_tag = "<h1>"
      close_tag = "</h1>"
      assert_equal ("<h1>Test,test</h1>"), chisel.delete_and_sub_md_markers(text,md_marker,open_tag,close_tag)
    end


    def test_method_that_deletes_and_subs_h1_to_h6
        chisel = Chisel.new
        text = "######Test,test"
        md_marker = "#"
        open_tag = "<h6>"
        close_tag = "</h6>"
        assert_equal ("<h6>Test,test</h6>"), chisel.delete_and_sub_md_markers(text,md_marker,open_tag,close_tag)
    end


    def test_method_that_deletes_and_subs_paragraph_html
      skip
      chisel = Chisel.new
        text = "This is a test"
        md_marker = ""
        open_tag = "<p>"
        close_tag = "</p>"
        assert_equal ("<p>Test,test</p>"), chisel.delete_and_sub_md_markers(text,md_marker,open_tag,close_tag)
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