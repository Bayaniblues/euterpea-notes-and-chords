-- from https://www.reddit.com/r/haskell/comments/5mx8av/saving_user_input_to_array_in_io/

-- convert user input from string to integer
--parseInput :: String -> Maybe Int 

-- Gets the input and outputs integer
getUserInputs :: IO [Int]
getUserInputs = do
    input <- getLine
    case parseInput input of 
        Nothing -> return []
        Just anInt -> do
            moreInputs <- getUserInputs
            return (anInt : moreInputs)

main :: IO ()
main = do
    inputs <- getUserInputs
    print (sort inputs)