isPrime :: Int -> Bool
isPrime x = isPrimeAux x (floor . sqrt . fromIntegral $ x)
  where
    isPrimeAux x 1 = True
    isPrimeAux x y
      | x `mod` y == 0 = False
      | otherwise = isPrimeAux x (y-1)


primeFactors :: Int -> [Int]
primeFactors n = [x | x <- [2..n]
                    , n `mod` x == 0
                    , isPrime x]

factorMultiplicity :: Int -> Int -> Int
factorMultiplicity 1 _ = 0
factorMultiplicity n x
  | n `mod` x == 0 = 1 + factorMultiplicity (n `div` x) x
  | otherwise = 0

primeFactorsMult :: Int -> [(Int, Int)]
primeFactorsMult n = map multiplicity (primeFactors n)
  where
    multiplicity x = (x, factorMultiplicity n x)