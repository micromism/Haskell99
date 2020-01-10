module P3 where
elemAt :: [a]->Int->a
elemAt (x:xs) 1 = x
elemAt (x:xs) n = elemAt xs (n-1)
