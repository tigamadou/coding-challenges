def palindromeIndex(s)
  return -1 if palindrome?(s)
  str=""
  (s.length/2).times do |i|
    if s[i] != s[-(i+1)]
      s1 = s[0...i]
      s2 = s[i+1...s.length]
      str = s1 + s2
      if str.reverse == str
        return i 
      end
      s1 = s[0...-(i+1)]
      s2 = s[(s.length-i)...s.length]
      str = s1 + s2
      if str.reverse == str
        return s.length-i-1
      end
    end
  end
end
