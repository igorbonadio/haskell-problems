slice :: [a] -> Int -> Int -> [a]
slice xs 1 0 = []
slice (x:xs) 1 b = x : slice xs 1 (b - 1)
slice (x:xs) a b = slice xs (a - 1) (b - 1)