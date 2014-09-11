lsort :: [[a]] -> [[a]]
lsort [] = []
lsort (x:xs) = (lsort [y | y <- xs , length y < length x]) ++ [x] ++ (lsort [y | y <- xs, length y >= length x])