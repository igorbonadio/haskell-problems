combinations :: Int -> [a] -> [[a]]
combinations 0 _ = [[]]
combinations n xs = [y:ys | y:ys' <- tails xs
                          , ys <- combinations (n-1) ys']
  where
    tails [] = [[]]
    tails xs = xs : (tails (tail xs))