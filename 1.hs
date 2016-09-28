main :: IO()

count :: Int -> Int
count n = countHelper 0 n 0 
    where countHelper i n s | i == n = s 
                            | otherwise = if (mod i 3 == 0 || mod i 5 == 0) then countHelper (i+1) n s+i else countHelper (i+1) n s

main = print $ count 1000