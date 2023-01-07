-- Question 1 --------------------------------
-- Create a higher-order function that takes 3 parameters: A function and the two parameters that that function takes, and
-- flips the order of the parameters.
-- For example this: `(/) 6 2` returns `3`. But this: `flip' (/) 6 2` returns `0.3333333333`

-- SOLUTION
flip' :: (a -> b -> c) -> b -> a -> c  
flip' f y x = f x y

-- Question 2 --------------------------------
-- Create the `uncurry'` function that converts a curried function to a function on pairs. So this: `(+) 1 2` that returns `3` can be written as
-- `uncurry' (+) (1,2)` (with the two different arguments inside a pair).

-- SOLUTION
uncurry' :: (a -> b -> c) -> ((a, b) -> c)
uncurry' f (x,y) =  f x y

-- Question 3 --------------------------------
-- Create the `curry'` function that converts an uncurried function to a curried function. So this: `fst (1,2)` that returns `1` can be written as
-- `curry' fst 1 2` (with the tuple converted into two different arguments).

-- SOLUTION
curry' :: ((a, b) -> c) -> a -> b -> c
curry' f x y =  f (x, y)

-- Question 4 --------------------------------
-- Use higher-order functions, partial application, and point-free style to create a function that checks if a word has an uppercase letter.
-- Start with using just higher-order functions and build from there. 

-- SOLUTION
checkUpperCase :: String -> Bool
checkUpperCase = any (`elem` ['A'..'Z'])

-- Question 5 --------------------------------
-- Create the `count` function that takes a team ("Red", "Blue", or "Green") and returns the amount of votes the team has inside `votes`.
votes :: [String]
votes = ["Red", "Blue", "Green", "Blue", "Blue", "Red"]

-- SOLUTION
countV :: String -> Int
countV x = length . filter (== x) $ votes

-- Question 6 --------------------------------
-- Create a one-line function that filters `cars` by brand and then checks if there are any left.
cars :: [(String,Int)]
cars = [("Toyota",0), ("Nissan",3), ("Ford",1)]

-- SOLUTION
checkBrandAnyCarsLeft :: String -> Bool
checkBrandAnyCarsLeft x = any (\(_, cars) -> cars > 0) . filter (\(brand, _) -> brand == x) $ cars

--------------------------------
-- Run Function
--------------------------------
runHomework = do 
  print "Test result for question 1"
  print $ flip' (/) 6 2
  print "-------------------------------------------------------"
  print "Test result for question 2"
  print $ uncurry' (+) (1,2)
  print "-------------------------------------------------------"
  print "Test result for question 3"
  print $ curry' fst 1 2
  print "-------------------------------------------------------"
  print "Test result for question 4"
  print $ checkUpperCase "upptercaseno"
  print $ checkUpperCase "upptercaseYES"
  print "-------------------------------------------------------"
  print "Test result for question 5"
  print $ countV "Red"
  print $ countV "Blue"
  print "-------------------------------------------------------"
  print "Test for question 6"
  print $ checkBrandAnyCarsLeft "Toyota"
  print $ checkBrandAnyCarsLeft "Nissan"