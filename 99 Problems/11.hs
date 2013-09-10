--(compress '(a a a a b c c a a d e e e e))
--(A B C A D E)
import Data.List(group)

data ModList a = Single a | Multiple Int a deriving (Show)

encode x = map encode' (group x) 

encode' :: [a] -> ModList a
encode' (x:[]) = Single x 
encode' (x:xs) = Multiple (length (x:xs)) (head xs)

