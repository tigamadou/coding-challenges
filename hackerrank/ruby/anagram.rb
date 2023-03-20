def anagram(s)
return -1 if !s.is_a?(String) || s.length < 1 || s.length > 10**4 || s.length.odd?
  count = 0    
  l = s.length  
  s1 = s[0...l/2].split('')
  s2 = s[l/2...l].split('')  
  s2.uniq().each do |x|    
    count += s2.count(x)-s1.count(x) if s2.count(x) >s1.count(x)
  end
  return count

end
