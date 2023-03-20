=begin
	Happy Ladybugs is a board game having the following properties:

The board is represented by a string, , of length . The  character of the string, , denotes the  cell of the board.
If  is an underscore (i.e., _), it means the  cell of the board is empty.
If  is an uppercase English alphabetic letter (ascii[A-Z]), it means the  cell contains a ladybug of color .
String  will not contain any other characters.
A ladybug is happy only when its left or right adjacent cell (i.e., ) is occupied by another ladybug having the same color.
In a single move, you can move a ladybug from its current position to any empty cell.

Link: https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/happy-ladybugs/problem
=end



def happyLadybugs(b)
    # Return YES is all the elements are space
    return "YES" if b.split("").sort[0] == "_" 
    # If no space
    if b.count("_") == 0
      # loop from 0 to string length -1
			for a in 0...b.length do
				# return no if the the current element count is 1
				return "NO" if b.count(b[a]) == 1
				# If the current element is not equal to the next one
        if b[a] != b[a+1]
					# proceed to the next if the current element is equal to the previous
					next if b[a] == b[a-1]
					# Else return no as the current element is not equal to its left and right adjacent elements
          return "NO"
        end        
      end
		else return no as the current element is not equal to its left and right adjacent elements
			
      b.length.times do |a|
          return "NO" if b[a] !="_" and b.count(b[a]) === 1
      end
    end
  
    return "YES"
  
  end