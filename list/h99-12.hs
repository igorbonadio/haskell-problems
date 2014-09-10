data Encode a = Multiple Int a | Single a deriving (Show)

decodeModified :: [Encode a] -> [a]
decodeModified [] = []
decodeModified (x:xs) = decodeModifiedAux x ++ decodeModified(xs)
  where
    decodeModifiedAux (Multiple 0 c) = []
    decodeModifiedAux (Multiple n c) = c : decodeModifiedAux (Multiple (n-1) c)
    decodeModifiedAux (Single c) = [c]