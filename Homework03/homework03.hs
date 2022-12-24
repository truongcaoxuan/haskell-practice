-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

-- SOLUTION:
consCheck consUsed hoursUsed consMax
    | consMonthly > consMax  = "Power consumption exceeds the maximum rated threshold"  
    | consMonthly == consMax = "Power consumption reaches the maximum rated threshold"
    | otherwise              = "You're save the world!"
    where
        consMonthly = consUsed * hoursUsed * 30
----------------
-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.

-- SOLUTION
consCheck' consUsed hoursUsed consMax
    | consMonthly > consMax  = "Power consumption exceeds the maximum rated threshold. You're wasting: " ++ show (consMonthly - consMax) ++ "kWh per month!"
    | consMonthly == consMax = "Power consumption reaches the maximum rated threshold"
    | otherwise              = "You're save the world: " ++ show (consMax - consMonthly) ++ "kWh per month! Good job!!"
    where
        consMonthly = consUsed * hoursUsed * 30

----------------
-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.

-- SOLUTION
-- example 1
areaOfTriangle a b c = 
    let 
        s = (a + b + c) / 2
    in
        sqrt (s * (s - a) * (s - b) * (s - c))
-- example 2
cylinderSurfaceArea r h = 
    let sideArea = 2 * pi * r * h  
        topArea = pi * r ^2  
    in  sideArea + 2 * topArea 
----------------
-- Question 4
-- Write a function that takes in two numbers and returns their quotient 
--   such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, 
--   return a message why the division is not possible. 
-- To implement this function using both guards and if-then-else statements.  

-- SOLUTION
quotSmallerThanOne :: Double -> Double -> String
quotSmallerThanOne a b
  | a < 0 && b < 0 = if (a < b) then show (b/a) else show (a/b)
  | a > b          = if a /= 0  then show (a/b) else "a is larger but 0"
  | a < b          = if b /= 0  then show (b/a) else "b is larger but 0"
  | otherwise      = if a /= 0  then "1"        else "a and b are both 0"

----------------
-- Question 5
-- Write a function that takes in two numbers 
-- and calculates the sum of squares for the product and quotient of those numbers. 
-- Write the function such that you use a (where block inside a let expression) 
-- and a (let expression inside a where block). 

-- SOLUTION
letExpAndWhere :: Double -> Double -> Double
letExpAndWhere a b = 
    let 
        sqrtProd = sqrt abProd where abProd = a * b --squares for the product with where block inside a let expression
    in 
        sqrtProd + sqrtQuot -- sum
    where sqrtQuot = let abQuot = a / b --let expression inside a where block
                     in sqrt abQuot --squares for quotient