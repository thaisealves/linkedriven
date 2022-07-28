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