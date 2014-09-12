isPrime :: Int -> Bool
isPrime x = isPrimeAux x (x `div` 2)
  where
    isPrimeAux x 1 = True
    isPrimeAux x y
      | x `mod` y == 0 = False
      | otherwise = isPrimeAux x (y-1)
