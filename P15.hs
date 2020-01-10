module P15 where

repli xs n = foldr (\x y -> (replicate n x) ++ y)  [] xs
