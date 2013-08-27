--Prelude> myLast [1,2,3,4]
--4
--Prelude> myLast ['x','y','z']
--'z'

myLast x = if null (tail x)
	then head x
	else myLast (tail x)


myLaster (x:xs) = if null xs
	then x
	else myLaster xs