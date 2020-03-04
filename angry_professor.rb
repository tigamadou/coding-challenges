def angryProfessor(k, a)
    n = a.select{|x| x<=0}.count    
    return n >= k ?  "NO" : "YES"
end