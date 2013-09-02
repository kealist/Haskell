--(my-flatten '(a (b (c d) e)))
--(A B C D E)
--myFlatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
--

data NestedList a = Elem a | List [NestedList a]

myFlatten :: NestedList a -> [a]
myFlatten (List []) = []
myFlatten (Elem x) = [x]
myFlatten (List (x:xs)) = (myFlatten x) ++ myFlatten (List xs)
