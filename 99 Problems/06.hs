-- Main> isPalindrome [1,2,3]
--False
-- Main> isPalindrome "madamimadam"
-- True
-- Main> isPalindrome [1,2,4,8,16,8,4,2,1]
-- True


--had trouble getting it to work because of Eq(a) that means an equivalence class, so it requires types that are of that class?
--(Eq(a)) means what?

isPalindrome :: (Eq(a)) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)