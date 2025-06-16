-- a) Function to return the list of factors of a number n
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]
-- [x | x <- [1..n]] generates a list of all numbers from 1 to n
-- n `mod` x == 0 filters the list, keeping only the numbers x that divide n evenly (i.e., x is a factor)

-- b) Function to check if a number n is prime
isPrime :: Int -> Bool
isPrime n = factors n == [1, n]
-- factors n generates the list of factors of n, and we check if this list equals [1, n]
-- If true, n is prime; otherwise, it is not prime

-- c) Function to return the list of prime factors of a number n
primeFactors :: Int -> [Int]
primeFactors n = [x | x <- factors n, isPrime x]
-- factors n generates the list of all factors of n
-- isPrime x checks if each factor x is prime
-- The result is a list of all prime factors of n
