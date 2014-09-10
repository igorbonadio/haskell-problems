dropEvery :: [a] -> Int -> [a]
dropEvery xs n = dropEveryAux xs n
  where
    dropEveryAux [] _ = []
    dropEveryAux (y:ys) m
      | m == 1 = dropEveryAux ys n
      | otherwise = y : dropEveryAux ys (m - 1)