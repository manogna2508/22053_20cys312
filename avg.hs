type Student = (String, Int, [Int])

averageMarks :: [Int] -> Double
averageMarks [] = 0
averageMarks marks = fromIntegral (sum marks) / fromIntegral (length marks)

displayStudentAverages :: [Student] -> [(String, Double)]
displayStudentAverages [] = []
displayStudentAverages ((name, _, marks):xs) =
    (name, averageMarks marks) : displayStudentAverages xs

main :: IO ()
main = do
    putStrLn "Enter the list of students as [(\"Name\", RollNumber, [Marks])]:"
    input <- getLine
    let students = read input :: [Student]
    putStrLn "Student names and their average marks:"
    print $ displayStudentAverages students

