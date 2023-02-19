{-
**************************** IMPORTANT ****************************
This week is a two-step homework. First, you have to solve the
"Maze" challenge, and then the "Forest" challenge. The challenges
are in two separate files in both the homework and solution, so
you can check the solution for the first "Maze" challenge without
spoilers of the "Forest" one. Make sure to check the solution for
"Maze" (and only "Maze," I see you 🥸👀) before starting with the
"Forest" challenge!
*******************************************************************
Today, you'll build the simplest and most basic game imaginable.
It'll be a maze game where the player has to write a list of moves, and the game will perform them
and tell the player where it ends up. Then, the player can change the moves and check again until it
finds the exit.
To play the game, the player will open GHCi, load this file, and run a "solveMaze" function that
takes a maze and a list of moves and returns a String with the resulting state.
It should look like this:
*Main> solveMaze testMaze []
"You're still inside the maze. Choose a path, brave adventurer: GoLeft, GoRight, or GoForward."
*Main> solveMaze testMaze [GoLeft]
"You've hit a wall!"
*Main> solveMaze testMaze [GoForward]
"You're still inside the maze. Choose a path, brave adventurer: GoLeft, GoRight, or GoForward."
*Main> solveMaze testMaze [GoForward, GoRight]
"You've hit a wall!"
*Main> solveMaze testMaze [GoForward, GoLeft]
"YOU'VE FOUND THE EXIT!!"
How are you going to achieve this? You can try it on your own, but here you have a
step-by-step just in case:
1. Write two data types. One for the moves (Move) you can make, and another for the maze (Maze).
(Use the example above to figure them out.)
2. Write a function called "move" that takes a maze and a move and returns the maze after the move.
3. Write a "testMaze" value of type "Maze" and test the "move" function in GHCi.
4. Write the "solveMaze" function that will take a maze and a list of moves and returns the maze
after making those moves.
5. If you test the "solveMaze" function, you'll see that each time you try to solve the maze,
it'll print the whole maze for the player to see. To avoid that, write a "showCurrentChoice" function
that takes a maze and returns a different string depending on if you hit a wall, found the exit, or
still need to make another choice.
6. Adapt adapt "solveMaze" function to use "showCurrentChoice" and play with your new game using GHCi! :D
-}
--------------------------------------
--ANSWER
--------------------------------------
--1. Write two data types. One for the moves (Move) you can make, and another for the maze (Maze).
--(Use the example above to figure them out.)
data Move = GoForward | GoLeft | GoRight
data Maze = FoundExit | HitWall | Door Maze Maze Maze deriving (Show)

-- 2. Write a function called "move" that takes a maze and a move and returns the maze after the move.
moveF :: Maze -> Move -> Maze
moveF HitWall _  = HitWall
moveF FoundExit _  = FoundExit
moveF (Door x _ _) GoLeft  = x
moveF (Door _ x _) GoForward = x
moveF (Door _ _ x) GoRight  = x

--3. Write a "testMaze" value of type "Maze" and test the "move" function in GHCi.
testMaze :: Maze
testMaze = Door HitWall (Door FoundExit HitWall HitWall) (Door HitWall (Door HitWall HitWall HitWall) HitWall)

--4. Write the "solveMaze" function that will take a maze and a list of moves and returns the maze
--after making those moves.
solveMaze' ::  Maze -> [Move] -> Maze
solveMaze' = foldl moveF


--5. If you test the "solveMaze" function, you'll see that each time you try to solve the maze,
--it'll print the whole maze for the player to see. To avoid that, write a "showCurrentChoice" function
--that takes a maze and returns a different string depending on if you hit a wall, found the exit, or
--still need to make another choice.
showCurrentChoice :: Maze -> String
showCurrentChoice HitWall = "You've hit a wall!"
showCurrentChoice FoundExit = "YOU'VE FOUND THE EXIT!!"
showCurrentChoice _ ="You're still inside the maze. Choose a path, brave adventurer: GoLeft, GoRight, or GoForward."


--6. Adapt adapt "solveMaze" function to use "showCurrentChoice" and play with your new game using GHCi! :D
solveMaze :: Maze -> [Move]  -> String
solveMaze maze moveList = showCurrentChoice $ foldl moveF maze moveList

--------------------------------
-- Run Function
--------------------------------
runHomework = do 
  print "-------------------------------------------------------"
  print "ghci> solveMaze testMaze []"
  print $ solveMaze testMaze []
  print "You're still inside the maze. Choose a path, brave adventurer: GoLeft, GoRight, or GoForward."
  print "-------------------------------------------------------"
  print "ghci> solveMaze testMaze [GoLeft]"
  print $ solveMaze testMaze [GoLeft]
  print "You've hit a wall!"
  print "-------------------------------------------------------"
  print "ghci> solveMaze testMaze [GoForward]"
  print $ solveMaze testMaze [GoForward]
  print "You're still inside the maze. Choose a path, brave adventurer: GoLeft, GoRight, or GoForward."
  print "-------------------------------------------------------"
  print "ghci> solveMaze testMaze [GoForward, GoRight]"
  print $ solveMaze testMaze [GoForward, GoRight]
  print "You've hit a wall!"
  print "-------------------------------------------------------"
  print "ghci> solveMaze testMaze [GoForward, GoLeft]"
  print $ solveMaze testMaze [GoForward, GoLeft]
  print "YOU'VE FOUND THE EXIT!!"
  