import Data.List
import Data.Char
main :: IO()
main =
    do input <- readFile "p022_names.txt"
       let names = sort $ read$"["++ input++"]"
       let scores = zipWith score names [1..]
       print . sum $ scores
    where score w i = (i *) . sum . map (\c -> ord c - ord 'A' + 1) $ w