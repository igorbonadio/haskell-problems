compress :: Eq(a) => [a] -> [a]
compress (x:xs) = compressAux xs x
  where
    compressAux [] y = [y]
    compressAux (x:xs) y
      | x == y = compressAux xs y
      | otherwise = y : compressAux xs x