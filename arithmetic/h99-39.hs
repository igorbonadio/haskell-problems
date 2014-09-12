isPrime :: Int -> Bool
isPrime x = isPrimeAux x (floor . sqrt . fromIntegral $ x)
  where
    isPrimeAux x 1 = True
    isPrimeAux x y
      | x `mod` y == 0 = False
      | otherwise = isPrimeAux x (y-1)

primesR :: Int -> Int -> [Int]
primesR a b = [x | x <- [a..b] , isPrime x]