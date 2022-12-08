-- Question 1
-- Write a multiline comment below.
{- This is multiline comment
   So this is very fun
   Have a nice day!
-}

-- Question 2
-- Define a function that takes a value and multiplies it by 3.
multiThree x = x * 3

-- Question 3
-- Define a function that calculates the area of a circle.
calAreaCircle r = pi  * r * r

-- Question 4
-- Define a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder. 
calVolumeCylinder h r = calAreaCircle r * h

-- Question 5
-- Define a function that takes the height and radius of a cylinder and checks if the volume is greater than or equal to 42.
checkVolumeCylinder h r = calVolumeCylinder h r >= 42