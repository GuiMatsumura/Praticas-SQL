-- q1

SELECT users.id AS id, users.name AS name, cities.name AS city FROM users JOIN cities ON users."cityId" = cities.id WHERE cities.name = 'Rio de Janeiro';

-- q2

SELECT testimonials.id, user1.name as writer, user2.name as recipient, testimonials.message FROM testimonials JOIN users user1 ON user1.id=testimonials."writerId" JOIN users user2 ON user2.id=testimonials."recipientId";

-- q3

SELECT users.id AS id, users.name AS name, courses.name AS course, schools.name AS school, educations."endDate" as "endDate" FROM educations JOIN users ON educations."userId" = users.id JOIN courses ON educations."courseId" = courses.id JOIN schools ON educations."schoolId" = schools.id WHERE users.id = 30;

-- q4

SELECT users.id AS id, users.name AS name, roles.name AS role, companies.name AS company, experiences."startDate" AS "startDate" FROM experiences JOIN companies ON experiences."companyId" = companies.id JOIN roles ON experiences."roleId" = roles.id JOIN users ON experiences."userId" = users.id WHERE users.id = 50 AND experiences."endDate" IS NULL;