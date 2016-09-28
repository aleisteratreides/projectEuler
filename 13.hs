main :: IO()

main = do 
    xs <- fmap (map read . lines) (readFile "13_input.txt")
    print . take 10 . show . sum $ xs