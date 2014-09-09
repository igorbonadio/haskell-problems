-- recursive solution
myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = myLength xs + 1

-- tails recursive
myLength' :: [a] -> Int
myLength' xs = myLength_acc xs 0
  where
    myLength_acc [] n = n
    myLength_acc (x:xs) n = myLength_acc xs (n + 1)

