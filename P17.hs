module P17 where

split :: [a] -> Int -> ([a],[a])

split xs 0 = ([], xs)
split (x:xs) n = inp x (split xs (n-1))
                   where inp x (xs, ys) = (x:xs,ys)
