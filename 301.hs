import Data.Bits
main :: IO()

checkNim x = go 0 x
    where 
        go a 0 = a
        go a x = go (a + check x) (x-1)
            where 
                check x = if (xor x (xor (2*x) (3*x) :: Integer) :: Integer) == 0
                    then 1
                    else 0

makePowers z = [2^i | i <- [1..z]]
main = 
    print $ map checkNim $ makePowers 20