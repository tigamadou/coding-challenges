#Heap's algorithm - Used to generate all possible permutations of n objects
def heap_permutation(data, n)
    if n == 1
        print data
        return
    end
    
    n.times do |i|
        heap_permutation(data, n - 1)
        if n % 2 == 0
            data[i], data[n-1] = data[n-1], data[i]
        else
            data[0], data[n-1] = data[n-1], data[0]
        end
    end
end