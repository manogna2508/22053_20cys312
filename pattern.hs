-- Define the function isZero
isZero :: Int -> String
isZero 0 = "Zero"       -- Pattern matching for 0
isZero _ = "Not Zero"   -- For any other value, return "Not Zero"

