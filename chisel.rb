class Chisel

	# 1. WE ARE SUBSTITUTING "#" WITH <h1> USING GSUB #
	# 2. FIND A WAY TO RUN THROUGH STRING TO END AND ADD </h1>
  # \n\n = space between header and paragraph
  # start_with? method -> conditional
  # .split can take an additional parameter (" ", 2)

  def header_1(text)
    substitute_h1 = text.gsub("#","<h1>")
    substitute_h1 + "</h1>"
  end

  def header_2(text)
    substitute_h2 = text.gsub("##","<h2>")
    substitute_h2 + "</h2>"
  end
  # def header_2(text)
  #   substitute_h2 = text.gsub("##","<h2>")
  #   substitute_h2 + "</h2>"
  # end

  def paragraph(text)
    "<p>#{text}</p>"
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




