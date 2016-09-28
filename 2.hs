fib n = go n (0,1)
  where
    go n (a, b) | n==0      = a
                | otherwise = go (n-1) (b, a+b)

isEven n = 
    if (odd n) == True 
        then 0 
        else n

main = 
    print $ map fib [1..100]