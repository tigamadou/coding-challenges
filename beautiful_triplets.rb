def beautifulTriplets(d, arr)
    count=0
    arr.length.times do |i|  
     for j in (i+1...arr.length) do 
      next if j < i
      next if arr[j] - arr[i] != d
      for k in (j+1...arr.length) do 
        next if k < j
        next if arr[k]-arr[j] != d
        count+=1 if arr[j]- arr[i]== d && arr[k] - arr[j] == d        
      end
    end    
    end
    count

end