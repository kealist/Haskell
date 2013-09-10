


dupli :: [a] -> [a]
dupli (x:[]) = dupli' x
dupli (x:xs) = dupli' x ++ dupli xs


dupli' x = [x,x]
