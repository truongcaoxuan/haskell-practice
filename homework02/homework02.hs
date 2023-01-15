----------------
-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)
--SOLUTION

-- f1 x y z = x ** (y/z)
f1 :: Double -> Double -> Double -> Double
f1 x y z = x ** (y/z)

-- f2 x y z = sqrt (x/y - z)
f2 :: Float -> Float -> Float -> Float
f2 x y z = sqrt (x/y - z)

-- f3 x y = [x == True] ++ [y]
f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]

-- f4 x y z = x == (y ++ z)
f4 :: String -> String -> String -> Bool
f4 x y z = x == (y ++ z)

----------------
-- Question 2
-- Why should we define type signatures of functions? 
-- How can they help you? 
-- How can they help others?
--SOLUTION
-- Why should we define type signatures of functions? 
---- Restrictions on data 

-- How can they help you? 
---- Catch errors code. 
---- Sets the data transformation flow.
---- Easier to implement the functions.

-- How can they help others?
---- Better understand my code.

----------------
-- Question 3
-- Why should you define type signatures for variables? 
-- How can they help you?
-- ANSWER
-- Why should you define type signatures for variables? 
-- How can they help you?

---- If you define type signatures for variables, 
---- it is helpful that when you are getting errors, 
---- the error from the compiler can become more understandable.

----------------
-- Question 4
-- Are there any functions in Haskell that let you transform one type to the other? 
-- Try googling for the answer.
----------------
-- Use the function `show` to transform almost any type into String
-- Example
floatValue :: Float
floatValue = 3.14

stringValue :: String
stringValue = show floatValue

-- Convert a Double to an Int with the `round` function 
-- Example
doubleValue = 3.14 :: Double
intValue = round doubleValue :: Int

----------------
-- Question 5
-- Can you also define in Haskell list of lists? 
-- Did we showed any example of that? 
-- How would you access the inner most elements?
----------------
-- YESS! We can define in Haskell list of lists
-- Example:

stringListInList :: [String]
stringListInList = ["prod","dev","test"]

innerElement :: Char
innerElement = stringListInList !! 1 !! 2

--------------------------------
-- Run Function
--------------------------------
runHomework = do 
  print "test function f1"
  print $ f1 2 4 2
  print "-------------------------------------------------------"
  print "test function f2"
  print $ f2 20 2 1
  print $ f2 20 2 2
  print "-------------------------------------------------------"
  print "test function f3"
  print $ f3 False True
  print $ f3 True True
  print $ f3 True False
  print $ f3 False False
  print "-------------------------------------------------------"
  print "test function f4"
  print $ f4 "Hello" "He" "llo"
  print "-------------------------------------------------------"
  print "convert Float-to-String"
  print $ floatValue
  print $ stringValue
  print "-------------------------------------------------------"
  print "convert Double-to-Int"
  print $ doubleValue
  print $ intValue
  print "-------------------------------------------------------"
  print "define list of list & access the inner most elements"
  print $ stringListInList
  print $ innerElement