import Data.List.Split

main :: IO()


barCoords x y [x1,y1,x2,y2,x3,y3] =
    let
        a = ((y2 - y3)*(x - x3) + (x3 - x2)*(y - y3)) / ((y2 - y3)*(x1 - x3) + (x3 - x2)*(y1 - y3))
        b = ((y3 - y1)*(x - x3) + (x1 - x3) * (y - y3)) / ((y2 - y3)*(x1 - x3) + (x3 - x2)*(y - y3))
    in
        [a,b,(1-a-b)]

check [a, b, c] = 
    if (a <= 1 && a >= 0 && b <= 1 && b >= 0 && c <= 1 && c >= 0) 
        then 1
        else 0

runTriangs [] a = a
runTriangs (a:as) b = runTriangs as (b + check (barCoords 0 0 a)) 
        
main = do
    input <- readFile "p102_triangles.txt"
    let triang = map (map read . splitOn ",") $ lines input :: [[Float]] 
    print $ runTriangs triang 0