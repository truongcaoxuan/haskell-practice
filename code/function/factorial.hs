--method 1
fac :: (Integral a) => a -> a
fac n = aux n 1
    where
        aux n acc
           | n <=1 = acc
           | otherwise = aux (n-1) (n*acc)

--method 2
fac :: (Integral a) => a -> a
fac n
    | n<=0 = 1
    | otherwise = n * fac (n-1)

--method 3
fac :: (Integral a) => a -> a
fac 0 = 1
fac n = n * fac (n-1)

--method 4
fac :: (Integral a) => a -> a
fac  n = product [1..n]
