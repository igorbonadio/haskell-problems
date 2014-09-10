pack :: Eq(a) => [a] -> [[a]]
pack (x:xs) = packAux xs x [x]
  where
    packAux [] _ p = [p]
    packAux (x:xs) y p
      | x == y = packAux xs y (y:p)
      | otherwise = p : packAux xs x [x]