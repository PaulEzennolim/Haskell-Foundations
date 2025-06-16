module Main where

import System.IO (readFile)

countLinesAndWords :: IO ()
countLinesAndWords = do
  -- Prompt the user to enter a filename
  putStrLn "Enter the filename:"

  -- Read the filename from standard input
  filename <- getLine

  -- Read the contents of the file
  contents <- readFile filename

  -- Split the contents into lines
  let linesList = lines contents
  
  -- Count the number of lines
  let lineCount = length linesList

  -- Split each line into words and concatenate all word lists into a single list
  let wordsList = concatMap words linesList
  
  -- Count the total number of words
  let wordCount = length wordsList

  -- Print the results
  putStrLn ("Total number of lines: " ++ show lineCount)
  putStrLn ("Total number of words: " ++ show wordCount)

main :: IO ()
main = countLinesAndWords