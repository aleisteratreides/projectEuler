fact x = go x 1
    where 
        go 1 n = n
        go x n = go (x-1) (n*x)


sumD n = go n 0
    where
        go 0 n = n
        go x n = go (x `div` 10) (n + (x `mod` 10))

main =
    print $ sumD $ fact 100