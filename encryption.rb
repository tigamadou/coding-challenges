def encryption(s)
    rc = Math.sqrt(s.length)
     if rc - rc.to_i === 0
      rows =  rc.to_i
      col=rows
     else
      rows= rc.to_i
      if rows * (rows+1) < s.length
        rows = rc.ceil
        col =rows
      else
        col= rows+1
      end
     end 

     grid,cript = [],[]
     col.times {cript.push("")}
     (0...rows).each do |index|   
      grid.push(s[index * col...(index * col) + col] ) 
     end
     (0...grid.length).each do |i|
      (0...grid[i].length).each do |y|
        cript[y]+=grid[i][y]
      end
     end
     cript.join(" ")

end