=begin
Cavity Map
Challenge link: 
https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/cavity-map/problem

You are given a square map as a matrix of integer strings. Each cell of the map has a value denoting its depth. We will call a cell of the map a cavity if and only if this cell is not on the border of the map and each cell adjacent to it has strictly smaller depth. Two cells are adjacent if they have a common side, or edge.

Find all the cavities on the map and replace their depths with the uppercase character X.

=end
def cavityMap(grid)
	r=[]  
	grid.count.times do|row_index|  
		# Convert the current row in an array of strings
		grid[row_index] = grid[row_index].split("").map{ |s| s.to_s }
		# set the number of columns of each row of the grid
		columns= grid[row_index].count
		# If the row is not on border
		unless  row_index === 0 || row_index === grid.count-1 
			# Iterating over the current row columns
			columns.times do |col_index|
				# set the current row
				row = grid[row_index]    
				# Check if the current cell is not on the border
				unless col_index === 0 || col_index === columns-1 
					# set the cell 
					cell = row[col_index].to_i
					# get all the adjacents cells value
					adjacents = [
						grid[row_index-1][col_index],
						grid[row_index+1][col_index],
						grid[row_index][col_index-1],
						grid[row_index][col_index+1]
					]
					# Proceed to the next itertion if any of adjacent cell is equal to "X"
					next if adjacents.any?{|e| e == "X"} 
					# Set the current cell to "X" if all of adjacent cells are smaller than the current cell         
					grid[row_index][col_index]  ="X" if adjacents.all?{|e| e.to_i < cell}            
				end        
			end              
		end
		# Add the current row of the grid as a string in the result array
		r.push(grid[row_index].join(""))       
	end 
	r
end
  