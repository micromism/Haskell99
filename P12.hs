module P12 where
import P11

decodeModified :: [Run a] -> [a]
decodeModified = concat . map dec
    where dec (Single x) = [x]
          dec (Multiple n x) = replicate n x
