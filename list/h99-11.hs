encode :: Eq(a) => [a] -> [(Int, a)]
encode (x:xs) = encodeAux xs (1, x)
  where
    encodeAux [] e = [e]
    encodeAux (x:xs) (n, y)
      | x == y = encodeAux xs ((n+1), y)
      | otherwise = (n, y) : encodeAux xs (1, x)

data Encode a = Multiple Int a | Single a deriving (Show)

encodeModified :: Eq(a) => [a] -> [Encode a]
encodeModified xs = encodeModifiedAux (encode xs)
  where
    encodeModifiedAux [] = []
    encodeModifiedAux ((1, x):xs) = (Single x) : (encodeModifiedAux xs)
    encodeModifiedAux ((n, x):xs) = (Multiple n x) : (encodeModifiedAux xs)