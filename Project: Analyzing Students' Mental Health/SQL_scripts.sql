-- students
-- Run this code to view the data in students
SELECT *
FROM students;

-- df
-- Start coding here...
--stay, count_int, average_phq, average_scs, and average_as
SELECT stay, COUNT(*) AS count_int, ROUND(AVG(todep), 2) AS average_phq, ROUND(AVG(tosc), 2) AS average_scs, ROUND(AVG(toas), 2) AS average_as
FROM public.students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC
