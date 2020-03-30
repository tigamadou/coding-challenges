def bonAppetit(bill, k, b)
    b2 = bill.delete_at(k)
    c = bill.sum/2
    ans=nil
    c == b ? ans= "Bon Appetit" : ans = b-c
    puts ans
  end