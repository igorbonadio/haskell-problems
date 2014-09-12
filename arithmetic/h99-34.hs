coprime :: Int -> Int -> Bool
coprime a b = gcd a b == 1

totient :: Int -> Int
totient n = totientAux n n
  where
    totientAux n 1 = 1
    totientAux n x
      | coprime n x = 1 + totientAux n (x - 1)
      | otherwise = totientAux n (x - 1)