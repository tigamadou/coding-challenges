def equalizeArray(arr)
    min= arr.count
    arr.uniq.each do |x|
      dif = arr.count- arr.count(x)
      min = dif if dif < min
    end
    min
  
  end