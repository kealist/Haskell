--Prelude> myLength [123, 456, 789]
--3
--Prelude> myLength "Hello, world!"
--13

myLength :: [x] -> Int
myLength x = myLengthWapper x 0


myLengthWapper :: [x] -> Int -> Int
myLengthWapper [] i = i
myLengthWapper (_:xs) i = myLengthWapper xs (i + 1)