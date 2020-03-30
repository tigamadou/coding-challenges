=begin
    
Link: https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/divisible-sum-pairs/problem
    
=end

def divisibleSumPairs(n, k, ar)
    count =0
    ar.length.times do |x|
      (x...ar.length).each do |y|
        next if x == y
        s = ar[x]+ar[y]
        count+=1 if (ar[x]+ar[y])%k == 0
      end    
    end
    count
  
  end