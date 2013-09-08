--(compress '(a a a a b c c a a d e e e e))
--(A B C A D E)

compress :: (Eq(a)) => [a] -> [a]
compress [] = []
compress x = compress' (init x) ((last x):[]) (last x) 

compress' :: (Eq(a)) => [a] -> [a] -> a -> [a]
compress' [] ys _ = ys
compress' xs ys z = if last xs == z 
	then (compress' (init xs) ys z) 
	else (compress' (init xs) ((last xs):ys) (last xs))
