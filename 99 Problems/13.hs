
--given "aaaabbcsldjfsaabbbbb"
--[Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']

data ModList a = Single a | Multiple Int a deriving (Show)

rledirect a = rledirect' (init a) (last a) 1

rledirect' :: (Eq(a)) => [a] -> a -> Int -> [ModList a]
rledirect' [] a 1 = [Single a]
rledirect' [] a n = [Multiple n a]
rledirect' xs a 1 = if (last xs) == a
	then rledirect' (init xs) a 2
	else rledirect' (init xs) (last xs) 1 ++ [Single a] 
rledirect' xs a n = if (last xs) == a
	then rledirect' (init xs) a (n + 1)
	else rledirect' (init xs) (last xs) 1 ++ [Multiple n a]

