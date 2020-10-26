def sliding_maximum(k, array)
    answ= Array.new #create a new array
    n = ((array.length/k.to_f)*2).to_i #calculate the number of time we should iterate.
    n.times do |x|
        answ.push(array[x,k].max) #then we access the array values starting from the current iterated element X to k the number of continuous elements.
    end
    answ
  end
  