class Chisel

	attr_reader :paragraph, :document, :document_part_two
	# 1. WE ARE SUBSTITUTING "#" WITH <h1> USING GSUB #
	# 2. FIND A WAY TO RUN THROUGH STRING TO END AND ADD </h1>
	def initialize
    @paragraph = '"You just *have* to try the cheesecake," he said. "Ever since it appeared in
    **Food & Wine** this place has been packed every night."'
    @document = '#My Life in Desserts'
    @document_part_two = '##Chapter 1: The Beginning'
  end	


  def header_1
    substitute_h1 = @document.gsub("#","<h1>")
    substitute_h1 + "</h1>"
  end

  def header_2
    substitute_h2 = @document_part_two.gsub("##","<h2>")
    substitute_h2 + "</h2>"
  end

  def paragraph(text)
    "<p>#{text}</p>"
  end

  def replace_wrapper_tag(text, md_marker, open_tag, close_tag)
    in_a_tag = false
    while text.include?(md_marker)
      if !in_a_tag
        text.sub!(md_marker,open_tag)
        in_a_tag = true
      else
        text.sub!(md_marker,close_tag)
        in_a_tag = false
      end
    end
    text
  end

  def single_asterisks(text)
    replace_wrapper_tag(text, "*", "<em>", "</em>")
  end

  def double_asterisks(text)
    replace_wrapper_tag(text, "**", "<strong>", "</strong>")
  end

	#Run through sentence and find * encasing a word on each side 
	#and **	encasing a word on each side
	def asterisks(text)
    asterisks = text.split.map do |word|
      if word.include?("**")
        word.sub!("**","<strong>")
        word.sub!("**","</strong>")
        word
      elsif word.include?("*")
        word.sub!("*","<em>")
        word.sub!("*","</em>")
        word
      else	
        word
      end
    end 
    asterisks.join(" ")
  end

	# def replace_front_asterisks
	# 	gsub("**","<strong>")
	# end

# # parser = Chisel.new
# # output = parser.parse(document)
# # # puts output

# #.each_line
# #.gsub? and regex
##.insert for h1, h2, and p
end

chisel = Chisel.new
print chisel.asterisks('"You just *have* to try the cheesecake," he said. "Ever **since** it appeared in
    **Food & Wine** this place has been packed every night."')

