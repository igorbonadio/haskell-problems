myButLast :: [a] -> a
myButLast [] = error "empty list"
myButLast [x] = error "single element list"
myButLast [x1, x2] = x1
myButLast (x:xs) = myButLast xs
