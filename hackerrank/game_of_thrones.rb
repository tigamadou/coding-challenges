=begin
    
Dothraki are planning an attack to usurp King Robert's throne. 
King Robert learns of this conspiracy from Raven and plans to lock the single door through which the enemy can enter his kingdom.
But, to lock the door he needs a key that is an anagram of a palindrome. 
He starts to go through his box of strings, checking to see if they can be rearranged into a palindrome.

Challenge link: https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/game-of-thrones/problem
=end

def gameOfThrones(s)
    odd= 0
    ans="YES"
    s2= s.split('').uniq
    s2.length.times do |x|
      odd+=1 if s.count(s2[x])%2!=0
    end
    ans = "NO" if odd >1
    ans
  end