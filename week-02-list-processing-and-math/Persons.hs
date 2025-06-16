-- Database of persons (name, activity, year of birth, year of death)
persons :: [(String, String, Int, Int)]
persons = [("Cervantes", "Literature", 1547, 1616),
           ("Velazquez", "Painting", 1599, 1660),
           ("Picasso", "Painting", 1881, 1973),
           ("Beethoven", "Music", 1770, 1823),
           ("Poincare", "Science", 1854, 1912),
           ("Quevedo", "Literature", 1580, 1654),
           ("Goya", "Painting", 1746, 1828),
           ("Einstein", "Science", 1879, 1955),
           ("Mozart", "Music", 1756, 1791),
           ("Botticelli", "Painting", 1445, 1510),
           ("Borromini", "Architecture", 1599, 1667),
           ("Bach", "Music", 1685, 1750)]

-- 'names' uses list comprehension to extract the first element (name) from each tuple in the database 'db'.
-- Each tuple in the database has the form (name, activity, birthYear, deathYear).
names :: [(String, String, Int, Int)] -> [String]
names db = [name | (name, _, _, _) <- db]

-- 'musicians' extracts the names of all people whose activity is "Music".
-- It uses list comprehension to filter the database 'db' and only includes names where the activity is "Music".
musicians :: [(String, String, Int, Int)] -> [String]
musicians db = [name | (name, activity, _, _) <- db, activity == "Music"]

-- 'select' is a more general function that filters the database based on any activity.
-- It returns a list of names where the 'activity' matches the provided string 'act'.
select :: [(String, String, Int, Int)] -> String -> [String]
select db act = [name | (name, activity, _, _) <- db, activity == act]

-- 'musicians'' is a version of the musicians function that uses the select function to extract musicians.
-- This is an alternative way to achieve the same result as the 'musicians' function defined earlier.
musicians' :: [(String, String, Int, Int)] -> [String]
musicians' db = select db "Music"

-- A person was alive in 'year' if their birth year is less than or equal to 'year', and their death year is 
-- greater than or equal to 'year'.
alive :: [(String, String, Int, Int)] -> Int -> [String]
alive db year = [name | (name, _, birth, death) <- db, birth <= year, death >= year]

