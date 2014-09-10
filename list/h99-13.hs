encodeDirect :: Eq(a) => [a] -> [(Int, a)]
encodeDirect (x:xs) = encodeDirectAux xs (1, x)
  where
    encodeDirectAux [] e = [e]
    encodeDirectAux (x:xs) (n, y)
      | x == y = encodeDirectAux xs ((n+1), y)
      | otherwise = (n, y) : encodeDirectAux xs (1, x)