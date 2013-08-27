--Prelude> myButLast [1,2,3,4]
--3
--Prelude> myButLast ['a'..'z']
--'y'

myButLast :: [x] -> x
myButLast [x] = error "must have at least two items"
myButLast (x:_:[]) = x
myButLast (_:xs) = myButLast xs 