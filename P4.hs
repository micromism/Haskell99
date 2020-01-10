module P4 where
myLength :: [a] -> Int
myLength = foldr (\x acc -> acc+1) 0
