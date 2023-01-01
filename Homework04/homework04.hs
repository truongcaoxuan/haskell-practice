-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1, 2], [3, 4]), ([5, 6], [7, 8])]

-- SOLUTION
getValue4th :: [([Int], [Int])] -> Int
getValue4th [(_, [_, x]), _] = x
getValue4th _ = 0

-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.
-- SOLUTION
-- Use multiple function definitions
removeListElement :: [a] -> [a]
removeListElement (x : y : _) = [x, y]
removeListElement x = x

-- Use case expressions
removeListElement' :: [a] -> [a]
removeListElement' list = case list of
  (x : y : _) -> [x, y]
  x -> x

-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together
-- SOLUTION
addTuple :: (Integer, Integer, Integer) -> Integer
addTuple (x, y, z) = x + y + z

-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.
-- SOLUTION
checkListEmpty :: [a] -> Bool
checkListEmpty [] = True
checkListEmpty _ = False

-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.
-- SOLUTION
tailFunction :: [a] -> [a]
tailFunction (x : xs) = xs
tailFunction [] = []

-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing.
-- (Use the `even` function to check if the number is even.)
-- SOLUTION
addsOneIfEven :: Int -> Int
addsOneIfEven x = case even x of
  True -> x + 1
  False -> x