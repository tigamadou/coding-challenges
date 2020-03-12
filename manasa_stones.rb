=begin
    Manasa is out on a hike with friends. She finds a trail of stones with numbers on them. 
    She starts following the trail and notices that any two consecutive stones' numbers differ by one of two values. 
    Legend has it that there is a treasure trove at the end of the trail. If Manasa can guess the value of the last stone, the treasure will be hers.

    Link: https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/manasa-and-stones/problem

=end
rescue => exception
    
end
def stones(n, a, b)
    min,max = [a,b].min,[a,b].max
    r = [min*(n-1)]
    while r[-1] < (max*(n-1))
      r.push(r[r.length-1]+(max-min))
    end
    r
  end