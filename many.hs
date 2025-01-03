-- 3. Basic Functions

-- a. Sum of two integers
sumIntegers :: Int -> Int -> Int
sumIntegers x y = x + y

mainSumIntegers :: IO ()
mainSumIntegers = do
    putStrLn "Enter two integers to sum:"
    x <- readLn :: IO Int
    y <- readLn :: IO Int
    putStrLn $ "Sum: " ++ show (sumIntegers x y)

-- b. Check if even
isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

mainIsEven :: IO ()
mainIsEven = do
    putStrLn "Enter an integer to check if it's even:"
    x <- readLn :: IO Int
    putStrLn $ "Is Even: " ++ show (isEven x)

-- c. Absolute value
absolute :: Int -> Int
absolute x = if x < 0 then -x else x

mainAbsolute :: IO ()
mainAbsolute = do
    putStrLn "Enter an integer to find its absolute value:"
    x <- readLn :: IO Int
    putStrLn $ "Absolute Value: " ++ show (absolute x)

-- d. Sum of List
sumList :: [Int] -> Int
sumList = sum

mainSumList :: IO ()
mainSumList = do
    putStrLn "Enter a list of integers to find their sum (e.g., [1,2,3]):"
    xs <- readLn :: IO [Int]
    putStrLn $ "Sum of List: " ++ show (sumList xs)

-- e. Filter Even Numbers
filterEven :: [Int] -> [Int]
filterEven = filter even

mainFilterEven :: IO ()
mainFilterEven = do
    putStrLn "Enter a list of integers to filter even numbers (e.g., [1,2,3,4]):"
    xs <- readLn :: IO [Int]
    putStrLn $ "Filtered Even Numbers: " ++ show (filterEven xs)

-- f. Reverse List
reverseList :: [Int] -> [Int]
reverseList = reverse

mainReverseList :: IO ()
mainReverseList = do
    putStrLn "Enter a list to reverse it (e.g., [1,2,3]):"
    xs <- readLn :: IO [Int]
    putStrLn $ "Reversed List: " ++ show (reverseList xs)

-- g. Increment Each Element
incrementEach :: [Int] -> [Int]
incrementEach = map (+1)

mainIncrementEach :: IO ()
mainIncrementEach = do
    putStrLn "Enter a list of integers to increment each element (e.g., [1,2,3]):"
    xs <- readLn :: IO [Int]
    putStrLn $ "Incremented List: " ++ show (incrementEach xs)

-- h. Square a Number
square :: Int -> Int
square x = x * x

mainSquare :: IO ()
mainSquare = do
    putStrLn "Enter an integer to find its square:"
    x <- readLn :: IO Int
    putStrLn $ "Square: " ++ show (square x)

-- i. Add Then Multiply
addThenMultiply :: Int -> Int -> Int -> Int
addThenMultiply x y z = (x + y) * z

mainAddThenMultiply :: IO ()
mainAddThenMultiply = do
    putStrLn "Enter two integers to add and a third integer to multiply the result (e.g., 1 2 3):"
    [x, y, z] <- map read . words <$> getLine
    putStrLn $ "Add Then Multiply: " ++ show (addThenMultiply x y z)

-- j. Transform List (your provided example)
transformList :: [Int] -> [Int]
transformList = map ((+10) . square)

mainTransformList :: IO ()
mainTransformList = do
    putStrLn "Enter a list of integers to transform (e.g., [1,2,3]):"
    xs <- readLn :: IO [Int]
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
        5 -> mainFilterEven
        6 -> mainReverseList
        7 -> mainIncrementEach
        8 -> mainSquare
        9 -> mainAddThenMultiply
        10 -> mainTransformList
        _ -> putStrLn "Invalid choice."

