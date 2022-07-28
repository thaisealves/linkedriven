--Questão 1
SELECT COUNT("endDate") AS "currentExperiences" FROM experiences;

--Questão 2
SELECT "userId" AS id, COUNT("userId") AS educations 
FROM educations GROUP BY "userId"; 

--Questão 3
SELECT users.name AS writer, 
COUNT(t."writerId") AS "testimonailCount"
FROM testimonials t 
JOIN users ON t."writerId" = users.id
WHERE users.id = 435
GROUP BY users.name;

--Questão 4

SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role
FROM jobs JOIN roles ON jobs."roleId" = roles.id
WHERE jobs.active = true
GROUP BY roles.name
ORDER BY "maximumSalary" ASC;


--BONUS
SELECT schools.name AS school, courses.name AS course,
COUNT(e."userId") AS "studentsCount", e.status AS role
FROM educations e 
JOIN schools ON schools.id = e."schoolId"
JOIN courses ON courses.id = e."courseId"
WHERE e.status = 'ongoing' OR e.status = 'finished'
GROUP BY course, school, role 
ORDER BY "studentsCount" LIMIT 3
