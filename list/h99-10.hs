encode :: Eq(a) => [a] -> [(Int, a)]
encode (x:xs) = encodeAux xs (1, x)
  where
    encodeAux [] e = [e]
    encodeAux (x:xs) (n, y)
      | x == y = encodeAux xs ((n+1), y)
      | otherwise = (n, y) : encodeAux xs (1, x)