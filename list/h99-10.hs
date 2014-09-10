pack :: Eq(a) => [a] -> [[a]]
pack (x:xs) = packAux xs x [x]
  where
    packAux [] _ p = [p]
    packAux (x:xs) y p
      | x == y = packAux xs y (y:p)
      | otherwise = p : packAux xs x [x]

encode :: Eq(a) => [a] -> [(Int, a)]
encode xs = encodeAux (pack xs)
  where
    encodeAux [] = []
    encodeAux (x:xs) = (length x, head x) : encodeAux (xs)