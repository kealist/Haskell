--(compress '(a a a a b c c a a d e e e e))
--(A B C A D E)


encode x = map encode' (compress x) 

encode' :: [a] -> [a]
encode' xs = (length xs, head xs)

compress :: (Eq(a)) => [a] -> [[a]]
compress [] = []
compress x = compress' (init x) [] ((last x):[]) 

compress' [] ys xs = xs:ys
compress' zs ys xs = if head xs == last zs
	then compress' (init zs) ys ((last zs):xs)
	else compress' (init zs) (xs:ys)  ((last zs):[])





