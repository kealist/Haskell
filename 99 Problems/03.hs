--Prelude> elementAt [1,2,3] 2
--2
--Prelude> elementAt "haskell" 5
--'e'

elementAt :: [a] -> Int -> a
elementAt (x:_) 1 = x
elementAt (_:xs) i = elementAt xs (i - 1)
elementAt _ _ = error "out of bounds!"