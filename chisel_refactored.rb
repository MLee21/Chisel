class Chisel


  def identify_md_marker(text,md_marker,open_tag)
    identified = false
    while text.start_with?(md_marker)
      text.delete(md_marker).sub(open_tag)
      



  end
end












end

  ##COMBINE ##

  #1. Combine - Create a method that will identify what should be what
  #i.e. header 1 - 6, paragraph, asterisks, etc.

  #2. After identifying what is what, create a method that will strictly
  # go in and replace out the appropriate html tags





















  # def replace_wrapper_tag(text, md_marker, open_tag, close_tag)
  #   in_a_tag = false
  #   while text.include?(md_marker)
  #     if !in_a_tag
  #       text.sub!(md_marker,open_tag)
  #       in_a_tag = true
  #     else
  #       text.sub!(md_marker,close_tag)
  #       in_a_tag = false
  #     end
  #   end
  #   text
  # end

  # def single_asterisks(text)
  #   replace_wrapper_tag(text, "*", "<em>", "</em>")
  # end

  # def double_asterisks(text)
  #   replace_wrapper_tag(text, "**", "<strong>", "</strong>")
  # end

  #Run through sentence and find * encasing a word on each side 
  #and ** encasing a word on each side
#   def asterisks(text)
#     asterisks = text.split.map do |word|
#       if word.include?("**")
#         word.sub!("**","<strong>")
#         word.sub!("**","</strong>")
#         word
#       elsif word.include?("*")
#         word.sub!("*","<em>")
#         word.sub!("*","</em>")
#         word
#       else  
#         word
#       end
#     end 
#     asterisks.join(" ")
#   end
# end