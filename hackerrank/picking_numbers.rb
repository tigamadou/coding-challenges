def pickingNumbers(a)
    # Write your code here
    count = 0
    a.uniq.each do |x|
       numbers= a.select{|y| x-y == 1 || x-y ==0}
       count = numbers.count if numbers.count > count
    end
    count

end