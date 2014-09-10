split :: [a] -> Int -> ([a], [a])
split xs n = (splitFirst xs n, splitLast xs n)
  where
    splitFirst _ 0 = []
    splitFirst (y:ys) m = y : splitFirst ys (m - 1)

    splitLast [] _ = []
    splitLast (y:ys) 0 = y : splitLast ys 0
    splitLast (y:ys) m = splitLast ys (m - 1)

rotate :: [a] -> Int -> [a]
rotate xs n
  | n > 0 = rotateAux (split xs n)
  | otherwise = rotateAux (split xs (length xs + n))
  where
    rotateAux (a, b) = b ++ a