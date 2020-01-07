def getMoneySpent(keyboards, drives, b)
    n= keyboards.size
    m=drives.size
    r = -1
    return r if n < 1 && n > 1000 && m < 1 && m > 1000 && b < 1 && b > 10**6
    keyboards.each do |x|
        drives.each do |y|
        r = x+y if x+y > r && x+y <=b
        end
    end
    r
end
