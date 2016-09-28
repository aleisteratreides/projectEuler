import Data.Set


main ::IO()

penta :: [Int]
penta = [(n * (3*n-1)) `div` 2 | n <- [1..300]]

main = print $ head solutions
  where solutions = [a-b | a <- penta,
                           b <- takeWhile (<a) penta,
                           isPenta (a-b),
                           isPenta (b+a) ]
        isPenta = (`member` fromList  penta)
        