module P14 where

dupli = foldr (\x y -> x:(x:y)) []
