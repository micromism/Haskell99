module P10 where
encode :: Eq a => [a] -> [(Int,a)]
encode [] = []
encode [x] = [(1,x)]
encode (x:y:xs)
    | x == y = inc (encode(y:xs))
    | otherwise = (1,x):(encode(y:xs))
        where inc ((n,y):ys) = (n+1,y):ys
