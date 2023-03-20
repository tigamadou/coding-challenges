=begin
You wish to buy video games from the famous online video game store Mist.
Usually, all games are sold at the same price,  dollars. However, they are planning to have the seasonal Halloween Sale next month in which you can buy games at a cheaper price. 
Specifically, the first game you buy during the sale will be sold at  dollars, but every subsequent game you buy will be sold at exactly  dollars less than the cost of the previous one you bought.
This will continue until the cost becomes less than or equal to  dollars, after which every game you buy will cost  dollars each.

Challenge link: https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/halloween-sale/submissions/code/1322290994
=end

def howManyGames(p, d, m, s)
    return 0 if s<p
    count = 0
    t = 0
    diff = s
    while diff > m
      t+=p
      return count if t > s
      count+=1
      diff = s-t
      count+=1 if diff == m
      p-d >= m ? p-=d : p = m
    end    
    return count
end