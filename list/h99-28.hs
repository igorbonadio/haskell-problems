lsort :: [[a]] -> [[a]]
lsort [] = []
lsort (x:xs) = (lsort [y | y <- xs , length y < length x]) ++ [x] ++ (lsort [y | y <- xs, length y >= length x])

frequence :: [[a]] -> [(Int, [a])]
frequence xs = frequenceAux xs xs
  where
    frequenceAux [] _ = []
    frequenceAux (x:xs) ys = (count x ys, x) : frequenceAux xs ys
    count x [] = 0
    count x (y:ys)
      | length x == length y = 1 + count x ys
      | otherwise = count x ys

lfsort :: [[a]] -> [[a]]
lfsort [] = []
lfsort ws = (lfsort [y | (fy, y) <- xs, fy < fx]) ++ [x] ++ (lfsort [y | (fy, y) <- xs, fy >= fx])
  where
    (fx, x):xs = frequence ws