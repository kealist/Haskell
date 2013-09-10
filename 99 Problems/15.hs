
--repli "abc" 3

repli :: [a] -> Int -> [a]
repli x n = concatMap (repliElem n) x


repliElem 0 x = []
repliElem 1 x = [x]
repliElem n x = [x] ++ repliElem (n - 1) x
