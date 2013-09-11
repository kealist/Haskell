

rotate xs 0 = xs
rotate xs n = if n > 0
	then rotate (tail xs ++ [head xs]) (n - 1)
	else rotate ([last xs] ++ (init xs)) (n + 1)
