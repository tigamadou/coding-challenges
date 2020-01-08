t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    a,b,s= 1,2,0
    while b <= n
        s += b unless b.odd?
        a,b = b, b+a
    end
    p s
end
