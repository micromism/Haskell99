module P6 where
isPal :: Eq a => [a] -> Bool
isPal [] = True
isPal xs = xs == (reverse xs)
