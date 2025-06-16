-- Define a function to categorize grades into specific bands
gradeBands :: [(String, Int)] -> (Int, Int, Int, Int, Int, Int)
gradeBands students = (below30, from30to39, from40to49, from50to59, from60to69, above70)
  where
    -- Count students in each grade band using list comprehensions
    below30    = length [grade | (_, grade) <- students, grade < 30]
    from30to39 = length [grade | (_, grade) <- students, grade >= 30 && grade < 40]
    from40to49 = length [grade | (_, grade) <- students, grade >= 40 && grade < 50]
    from50to59 = length [grade | (_, grade) <- students, grade >= 50 && grade < 60]
    from60to69 = length [grade | (_, grade) <- students, grade >= 60 && grade < 70]
    above70    = length [grade | (_, grade) <- students, grade >= 70]
