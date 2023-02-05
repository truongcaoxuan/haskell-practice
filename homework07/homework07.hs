------------------------------------------------
-- Question 1
-- Investigate the `Bounded` type class. What behaviours it provides?

-- ANSWER
-- The Bounded type class class is used to name the upper and lower limits of a type.
-- It provides the minBound and maxBound behaviours to check the minimum and maximum values of a type.

-- maxBound :: Int -- returns 9223372036854775807

------------------------------------------------
-- Question 2
-- The types Int and Word bellong to the same type classes. What is the difference
-- between them? Check maybe the maxBound and minBound parameter for both types.

-- ANSWER
-- maxBound :: Int  -- returns 9223372036854775807
-- maxBound :: Word -- returns 18446744073709551615
-- minBound :: Int  -- returns -9223372036854775808
-- minBound :: Word -- returns 0

-- The Word type is an unsigned integral type, with the same size as Int.
-- It has a 2 times higher maxBound and 0 for minBound.

------------------------------------------------
-- Question 3
-- Investigate the `Enum` type class. What behaviours provides?

-- ANSWER
-- The Enum class defines operations on sequentially ordered types.
-- Two important behaviors of this class are:

-- `succ` that gives you the successor of a value.
-- `pred` that gives you the predecessor of a value.

-- This type class is the one that allows us to create ranges of values like [3..] and ['a'..'h']

------------------------------------------------
-- Question 4
-- Add type signatures to the functions below and use type variables and type classes.
-- Then uncomment the functions and try to compile.

-- ANSWER


------------------------------------------------
-- Question 5
-- Investigate the numeric type classes to figure out which behaviors they provide to change between numeric types.

-- ANSWER
-- We could use and combine several behaviors: `fromInteger`, `toInteger`, and `fromRational`. Although other
-- type classes we didn't cover provide `round` `ceiling`, etc. that we can also use to go from fractions to Integrals.