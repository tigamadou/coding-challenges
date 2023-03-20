=begin
    
Link => https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/insertionsort2/problem    
=end

def insertionSort2(n, arr)
    arr.length.times do |i|
        next if i==0
        for y in (0...i) do
            if arr[i] < arr[y]
                for z in (y..i).reverse_each do          
                    arr = arr.insert(z, arr.delete_at(y)) if arr[y]>arr[z]
                end            
            end
        end  
        puts arr.join(' ')
    end
end