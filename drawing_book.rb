def pageCount(n, p)
    count = 0   
    count_start = p/2
    count_end = (n/2)-(p/2)   
    count_start < count_end ? count = count_start : count = count_end     
    count

end
