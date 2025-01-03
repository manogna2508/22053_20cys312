-- 3. Basic Functions

-- b. Apply multiple transformations: Square each element and then add 10
square :: Int -> Int
square x = x * x

transformList :: [Int] -> [Int]
transformList = map ((+10) . square)  -- Compose functions: square and then add 10

mainTransformList :: IO ()
mainTransformList = do
    putStrLn "Enter a list of integers to transform (e.g., [1,2,3]):"
    xs <- readLn :: IO [Int]  -- specify the type as a list of Ints
    putStrLn $ "Transformed List: " ++ show (transformList xs)

-- Main Function to Call Individual Test Cases
main :: IO ()
main = do
    putStrLn "Choose a function to test:"
    putStrLn "1. Sum of Two Integers"
    putStrLn "2. Check Even or Odd"
    putStrLn "3. Absolute Value"
    putStrLn "4. Sum of List"
    putStrLn "5. Filter Even Numbers"
    putStrLn "6. Reverse List"
    putStrLn "7. Increment Each Element"
    putStrLn "8. Square a Number"
    putStrLn "9. Add Then Multiply"
    putStrLn "10. Transform List"
    choice <- readLn
    case choice of
        1 -> mainSumIntegers
        2 -> mainIsEven
        3 -> mainAbsolute
        4 -> mainSumList
        5 -> mainFilterEven  -- You need to define this function
        6 -> mainReverseList  -- You need to define this function
        7 -> mainIncrementEach  -- You need to define this function
        8 -> mainSquare  -- You need to define this function
        9 -> mainAddThenMultiply  -- You need to define this function
        10 -> mainTransformList
        _ -> putStrLn "Invalid choice."

