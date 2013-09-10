
slice x n m = take' (m - n + 1) (drop' (n - 1) x)

take' 0 _ = []
take' 1 (x:xs) = [x]
take' n (x:xs) = [x] ++ take' (n - 1) xs 

drop' 0 x = x
drop' n (x:xs) = drop' (n - 1) xs 
