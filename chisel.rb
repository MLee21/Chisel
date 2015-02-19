
class Chisel

	attr_reader :paragraph
	# 1. WE ARE SUBSTITUTING "#" WITH <h1> USING GSUB #
	# 2. FIND A WAY TO RUN THROUGH STRING TO END AND ADD </h1>
	def initialize
		@paragraph = '"You just *have* to try the cheesecake," he said. "Ever since it appeared in
 		**Food & Wine** this place has been packed every night."'
	end	


	def header_1
		document = '#My Life in Desserts'
		substitute_h1 = document.gsub("#","<h1>")
		substitute_h1 + "</h1>"
	end
		
	def header_2
    	document_part_two = '##Chapter 1: The Beginning'
    	substitute_h2 = document_part_two.gsub("##","<h2>")
    	substitute_h2 + "</h2>"
	end

	def paragraph
		"<p>" + "#{@paragraph}" + "</p>"
	end



# # parser = Chisel.new
# # output = parser.parse(document)
# # # puts output

# #.each_line
# #.gsub? and regex
end

chisel = Chisel.new
puts chisel.header_1
puts chisel.header_2
puts chisel.paragraph

# <p>
#   "You just <em>have</em> to try the cheesecake," he said. "Ever since it appeared in
#   <strong>Food &amp; Wine</strong> this place has been packed every night."
# </p>

