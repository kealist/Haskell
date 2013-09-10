--dropEvery "abcdefghik" 3



dropEvery :: [a] -> Int -> [a]
dropEvery _ 0 = []
dropEvery [] _ = []
dropEvery xs n = dropEvery' xs n 1

dropEvery' :: [a] -> Int -> Int -> [a]
dropEvery' [] n m = []
dropEvery' (x:xs) n m = if m == n
	then dropEvery' xs n 1
	else [x] ++ dropEvery' xs n (m + 1)

