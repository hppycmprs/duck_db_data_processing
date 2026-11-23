SELECT * FROM sql_course_structure;

-- a) Select all the exercises in this course
SELECT * FROM sql_course_structure WHERE content_type = 'exercise';

 -- b) Select all the lectures in this course
SELECT * FROM sql_course_structure WHERE content_type = 'lecture'

-- c) Select all records for week 48
SELECT * FROM sql_course_structure WHERE week = 48

-- d) Select all records for week 47-49
SELECT * FROM sql_course_structure WHERE week BETWEEN 47 AND 49; 

-- e) How many lectures are in the table?
SELECT COUNT(*) FROM sql_course_structure WHERE content_type = 'lecture'

-- f) How many other content are there?
SELECT COUNT(*) FROM sql_course_structure WHERE content_type != 'lecture'

-- g) Which are the unique content types in this table?
SELECT DISTINCT content_type FROM sql_course_structure;

-- h) Delete the row with content 02_setup_duckdb and add it again.
DELETE FROM sql_course_structure WHERE content = '02_setup_duckdb';

INSERT INTO sql_course_structure (content, week, content_type)
VALUES ('02_setup_duckdb', 46, 'lecture');

-- i) You see that 02_setup_duckdb comes in the end of your table, even though the week is 46. 
-- Now make a query where you sort the weeks in ascending order.
SELECT * FROM sql_course_structure ORDER BY week ASC;

--  j) Now you can choose what you want to explore in this table.
-- Which week has the most number of lectures?
SELECT
  week,
  COUNT(*)
FROM
  sql_course_structure
WHERE
  content_type = 'lecture'
GROUP BY
  week
ORDER BY
  COUNT(*) DESC;