combinations :: Int -> [a] -> [[a]]
combinations 0 _ = [[]]
combinations n xs = [y:ys | y:ys' <- tails xs
                          , ys <- combinations (n-1) ys']
  where
    tails [] = [[]]
    tails xs = xs : (tails (tail xs))

removeElem :: Eq(a) => [a] -> a -> [a]
removeElem [] _ = []
removeElem (x:xs) e
  | x == e = xs
  | otherwise = x : removeElem xs e

removeElems :: Eq(a) => [a] -> [a] -> [a]
removeElems [] _ = []
removeElems xs [] = xs
removeElems xs (e:es) = removeElems (removeElem xs e) es

nCombinations :: [Int] -> [a]  -> [[[a]]]
nCombinations [] _ = []
nCombinations (n:ns) xs = combinations n xs : nCombinations ns xs

isDisjoint :: Eq(a) => [a] -> [a] -> Bool
isDisjoint [] _ = True
isDisjoint (x:xs) ys
  | (elem x ys) = False
  | otherwise = isDisjoint xs ys

group3 :: Eq(a) => [a] -> [[[a]]]
group3 xs = [x: y : z : [] | x <- combinations 2 xs
                           , y <- combinations 3 xs
                           , z <- combinations 4 xs
                           , x `isDisjoint` y
                           , x `isDisjoint` z
                           , z `isDisjoint` y]

