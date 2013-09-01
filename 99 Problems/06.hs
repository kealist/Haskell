-- Main> isPalindrome [1,2,3]
--False
-- Main> isPalindrome "madamimadam"
-- True
-- Main> isPalindrome [1,2,4,8,16,8,4,2,1]
-- True

isPalindrome :: (Eq(a)) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)