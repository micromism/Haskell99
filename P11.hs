module P11 where

data Run a = Multiple Int a | Single a deriving Show

encodeModified :: Eq a => [a] -> [Run a]
encodeModified [] = []
encodeModified [x] = [Single x]
encodeModified (x:y:xs)
    | x == y = inc (encodeModified(y:xs))
    | otherwise = (Single x):(encodeModified(y:xs))
        where inc ((Single y):ys) = (Multiple 2 y):ys
              inc ((Multiple n y):ys) = (Multiple (n+1) y):ys
