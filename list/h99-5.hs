-- simple version
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse(xs) ++ [x]

-- tail recursive version
myReverse' :: [a] -> [a]
myReverse' xs = myReverseAcc xs []
  where
    myReverseAcc [] ys = ys
    myReverseAcc (x:xs) ys = myReverseAcc xs (x:ys)
