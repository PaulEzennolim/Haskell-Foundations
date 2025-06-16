-- Function to generate the intervals after n steps in the Cantor set construction
cantor :: Int -> [(Double, Double)] -> [(Double, Double)]
cantor 0 intervals = intervals  -- Base case: no more recursion needed
cantor n intervals = concatMap divideAndRemove intervals  -- Apply the division to all intervals
  where
    -- Divide an interval and remove its middle third
    divideAndRemove (a, b) =
      let third = (b - a) / 3  -- Calculate one third of the interval
      in [(a, a + third), (a + 2 * third, b)]  -- Return the two remaining intervals
