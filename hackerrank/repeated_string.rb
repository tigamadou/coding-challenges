def repeatedString(s, n)    
    if  s.is_a?(String) && s.length >= 1 && s.length <=100 && n.is_a?(Integer) && n>= 1 && n <= 10**12
      na = s.count("a")
      return 0 if na == 0
      l = s.length
      q = n/l
      r= n%l      
      ra =0
      ra= s[0...r].count("a")  if r> 0
      return q*na+ra
    end
    return 0
end
