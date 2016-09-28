import Data.Array
import Data.List

fac :: Integer -> Integer
fac x = go x 1
    where 
        go 1 a = a
        go i j = i * j * go (i-1) j

main = 
    print $ fac 100