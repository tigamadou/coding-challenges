def solution(a)
    
    r = 1
    a = a.select{ |x| x >= 1 }.sort
    for i in 0...a.length do     
      return r if r < a[i]
      r = a[i]+1
    end
    r
  end