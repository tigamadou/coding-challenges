def chocolateFeast(n, c, m)
    b = n/c 
    w = 0
    t = 0  
    run = true
    while run do
        t+=b
        w += b 
        b = 0 
        b = (w/m)
        w = w%m
        run = false if b <= 0
    end
    t
end