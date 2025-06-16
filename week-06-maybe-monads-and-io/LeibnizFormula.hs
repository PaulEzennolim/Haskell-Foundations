approxPi :: Double -> (Double, Int)
approxPi tolerance = go 1 3 (-1) 1  -- Start with the first term, denom=3, sign=-1, steps=1
  where
    -- Recursive helper function `go`
    go :: Double -> Double -> Double -> Int -> (Double, Int)
    go sum denom sign steps =
      let
        -- Calculate the next term in the series
        term = sign * (1 / denom)

        -- Update the sum with the next term
        newSum = sum + term

        -- Approximate π based on the current sum
        piApprox = 4 * newSum

        -- Calculate the error based on the change between current and previous approximation
        error = abs (piApprox - 4 * sum)
      in
        if error < tolerance
          then (piApprox, steps)  -- Return the result if within tolerance
          else
            -- Recurse with updated sum, incremented denom, switched sign, and incremented steps
            go newSum (denom + 2) (-sign) (steps + 1)
