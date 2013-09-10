--(compress '(a a a a b c c a a d e e e e))
--(A B C A D E)
import Data.List(group)

data ModList a = Single a | Multiple Int a deriving (Show)

decode :: [ModList a] -> [a]
decode [] = []
decode ((Single a):xs) = [a] ++ (decode xs)
decode ((Multiple n a):xs) = (gen a n) ++ decode xs

gen x 0 = []
gen x n = [x] ++ gen x (n - 1)  

encode x = map encode' (group x) 

encode' :: [a] -> ModList a
encode' (x:[]) = Single x 
encode' (x:xs) = Multiple (length (x:xs)) (head xs)

