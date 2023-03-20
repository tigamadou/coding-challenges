def findDigits(n)
    c=0
    n.digits.each {|x| c+=1 if x!=0 && n % x === 0}
    c
end