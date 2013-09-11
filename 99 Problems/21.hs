
insertAt :: a -> [a] -> Int -> [a]
insertAt x xs n = insertion x (splitAt n xs)


insertion :: a-> ([a],[a]) -> [a]
insertion x (xs,ys)  = xs ++ [x] ++ ys
