
split :: [a] -> Int -> ([a],[a])
split x n = ((take' n x), (drop' n x))

take' 0 _ = []
take' 1 (x:xs) = [x]
take' n (x:xs) = [x] ++ take' (n - 1) xs 

drop' 0 x = x
drop' n (x:xs) = drop' (n - 1) xs 
