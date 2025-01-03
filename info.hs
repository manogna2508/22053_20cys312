-- Function to square each element
square :: Int -> Int
square x = x * x

-- Function to add 10 to each element
addTen :: Int -> Int
addTen x = x + 10

-- Function to transform the list using function composition
transformList :: [Int] -> [Int]
transformList = map (addTen . square)

-- Function to read a list of integers from user input
getUserInput :: IO [Int]
getUserInput = do
    putStrLn "Enter a list of integers (space-separated):"
    input <- getLine
    let intList = map read (words input) :: [Int]
    return intList

-- Example usage with user input
main :: IO ()
main = do
    -- Get user input
    userList <- getUserInput
    -- Transform the list
    let transformedList = transformList userList
    -- Print the transformed list
    print transformedList

