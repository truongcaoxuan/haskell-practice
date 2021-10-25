import System.Random

guessingGame :: IO ()
guessingGame = do putStrLn "Try to guess the secret word ([1-100])..."
                  secret <- randomRIO (1, 100)
                  play secret

play :: Int -> IO ()
play secret = do guesses <- playGame secret 0
                 putStrLn $ "You win! You took " ++ show guesses ++ " guesses!"
 
playGame :: Int -> Int -> IO Int
playGame secret guesses = do putStr "Enter your guess: "
                             input <- getLine
                             let guess = read input :: Int
                             case compare guess secret of
                               LT -> do putStrLn "Too low!"
                                        playGame secret (guesses + 1)
                               GT -> do putStrLn "Too high!"
                                        playGame secret (guesses + 1)
                               EQ -> do return (guesses + 1)

-- ghci > :l guessingGameFunc.hs
-- ghci > guessingGame
