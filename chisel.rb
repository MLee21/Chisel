
class Chisel

	# 1. WE ARE SUBSTITUTING "#" WITH <h1> USING GSUB #
	# 2. FIND A WAY TO RUN THROUGH STRING TO END AND ADD </h1>
	def header_1
		document = '# My Life in Desserts'
		substitute_h1 = document.gsub("#","<h1>")
	end
		# split_document = substitute_h1.split	
		# print split_document
# add_ending_h1 = substitute_h1.map.each_line {|string| 
# 				if string.length 
# }

## Chapter 1: The Beginning

# "You just *have* to try the cheesecake," he said. "Ever since it appeared in
# **Food & Wine** this place has been packed every night."'

# # parser = Chisel.new
# # output = parser.parse(document)
# # # puts output

# #.each_line
# #.gsub? and regex
end



# <h1>My Life in Desserts</h1>

# <h2>Chapter 1: The Beginning</h2>

# <p>
#   "You just <em>have</em> to try the cheesecake," he said. "Ever since it appeared in
#   <strong>Food &amp; Wine</strong> this place has been packed every night."
# </p>

