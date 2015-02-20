THOUGHTS ON HOW TO REFACTOR AND SHAPE CODE TO BE MORE CLEAN AND EFFICIENT

  '# FOR REFACTORED_CHISEL.RB'
  
  '## THE GENERAL STRUCTURE PIECE BY PIECE

  1. Create a method that will identify what should be what
    * How to identify between h1 - h6 headers
    * How to then indentify what is a paragraph v. header
    * How to then identify what is an asterisk
    * How to then identify what is a double asterisk

  2. After identifying what is what, create a method that will strictly
  go in and replace out the appropriate html tags
    * Correctly replace md markers with correct html tags
      * Start with header tags
      * Implement paragraphs
      * Implement single asterisk
      * Implement double asterisks
      * Make sure to test multiple plus scenarios for each tag and a 
      combination of different tags, etc.