

removeAt :: Int -> [a] -> (a,[a])
removeAt n x = removeAt' n [] x 

removeAt' :: Int -> [a] -> [a] -> (a,[a])
removeAt' 1 ys (x:xs) = (x,ys ++ xs)
removeAt' n ys (x:xs)= removeAt' (n - 1) (ys ++ [x]) xs
