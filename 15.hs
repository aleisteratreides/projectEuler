import Math.Combinatorics.Binomial

delannoyNumbers n = product [n+1..n*2] `div` product [2..n]

--137846528820
main :: IO()
main = print $ delannoyNumbers 20