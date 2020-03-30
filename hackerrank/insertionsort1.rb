=begin
    
link =: https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/insertionsort1    
=end
def insertionSort1(n, arr)
    e = arr[-1]  
    for i in (0...arr.length).reverse_each do
    next if arr[i] < e
    arr[i-1] > e && i!=0 ? arr[i]=arr[i-1] : arr[i]=e     
    puts arr.join(' ')
    end
end