module P9 where
pack :: Eq a => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:y:xs)
    | x == y = ins x (pack(y:xs))
    | otherwise = [x]:(pack(y:xs))
        where ins x (y:ys) = (x:y):ys
