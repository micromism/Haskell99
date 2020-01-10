module P16 where
dropEvery :: [a] -> Int -> [a]

dropEvery xs n = map snd . filter ((/=0) . ((flip mod) n) . fst) . (zip [1..]) $ xs
