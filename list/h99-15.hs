repli :: [a] -> Int -> [a]
repli [] _ = []
repli (x:xs) n = repliAux x n ++ repli xs n
  where
    repliAux x 0 = []
    repliAux x n = x : repliAux x (n-1)