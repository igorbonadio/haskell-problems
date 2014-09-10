removeAt n (x:xs) = removeAtAux n (x:xs) x []
  where
    removeAtAux _ [] r rs = (r, rs)
    removeAtAux n (x:xs) r rs
      | n > 1 = removeAtAux (n - 1) xs r (x : rs)
      | n < 1 = removeAtAux (n - 1) xs r (x : rs)
      | n == 1 = removeAtAux (n - 1) xs x rs