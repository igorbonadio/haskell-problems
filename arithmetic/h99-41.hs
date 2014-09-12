isPrime :: Int -> Bool
isPrime x = isPrimeAux x (floor . sqrt . fromIntegral $ x)
  where
    isPrimeAux x 1 = True
    isPrimeAux x y
      | x `mod` y == 0 = False
      | otherwise = isPrimeAux x (y-1)

goldbach :: Int -> (Int, Int)
goldbach n = head [(a, b) | a <- [2..n]
                          , b <- [2..n]
                          , isPrime a
                          , isPrime b
                          , a + b == n]

goldbachList :: Int -> Int -> [(Int, Int)]
goldbachList a b = map goldbach [x | x <- [a..b], even x]

goldbachList' :: Int -> Int -> Int -> [(Int, Int)]
goldbachList' a b m = [(n1, n2) | (n1, n2) <- (goldbachList a b), n1 > m, n2 > m]