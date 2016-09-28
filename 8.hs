import Data.Char 
import Data.List 
 
main = do
    str <- readFile "8input.txt"
    print . maximum . map product
          . foldr (zipWith (:)) (repeat [])
          . take 13 . tails . map (fromIntegral . digitToInt)
          . concat . lines $ str