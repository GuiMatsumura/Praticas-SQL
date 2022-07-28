-- q1

SELECT COUNT("endDate") AS "currentExperiences" 
FROM experiences;

-- q2 

SELECT "userId" as id, COUNT("userId") AS educations
FROM educations
GROUP BY "userId";

-- q3 

SELECT users.name as writer, COUNT(testimonials.id) as "testimonailCount" 
FROM testimonials
JOIN users
ON testimonials."writerId" = users.id
WHERE "writerId" = 435
GROUP BY users.name;

-- q4

SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role
FROM jobs
JOIN roles
ON roles.id = jobs."roleId"
WHERE jobs.active = TRUE
GROUP BY roles.name
ORDER BY "maximumSalary" ASC;