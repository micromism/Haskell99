module P2 where
myPenult :: [a] -> a
myPenult [x,y] = x
myPenult (x:xs) = myPenult xs
