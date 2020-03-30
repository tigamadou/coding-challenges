def libraryFine(d1, m1, y1, d2, m2, y2)
    fees=0
    return fees if y1 < y2     
    if y1 > y2
     fees = 10000
     elsif m1 > m2 && y1 == y2
     fees = (m1-m2)*500
     elsif d1 > d2 && m1 == m2 
     fees = (d1-d2)*15
     else
     fees = 0
     end

end
