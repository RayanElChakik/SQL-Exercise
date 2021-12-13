SELECT name FROM students ;
SELECT * FROM students WHERE Age>30;
SELECT name FROM students WHERE Age=30 AND Gender="F";
SELECT Points FROM students WHERE Name="Alex";
INSERT INTO students VALUES(7,"Rayan",25,"M",500);
UPDATE students SET Points=Points+1 WHERE name="Basma" ;
UPDATE students SET Points=Points-1 WHERE name="Alex" ;

/* Creating Table */ 

CREATE TABLE graduates(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Age INTEGER,
    Gender TEXT,
    Points INTEGER,
    Graduation TEXT
);

INSERT INTO graduates(Name,Age,Gender,Points)
SELECT name,Age,Gender,Points
FROM students
WHERE name="Layal";

UPDATE graduates 
SET Graduation = DATE('2018-09-08')
WHERE Name = "Layal";

DELETE FROM students WHERE name="Layal";

# /* Joins */
# 1

SELECT employees.name, companies.name, companies.date
FROM employees
join companies
ON employees.Company=companies.name;

# /* 2 */

SELECT employees.name FROM employees
join companies
on employees.Company = companies.name WHERE companies.date < 2000;

# /* 3 */
SELECT companies.name FROM employees
inner join companies
on employees.Company = companies.name WHERE employees.Role = 'Graphic Designer';

# /* Count and Filter */
# 1
SELECT Name FROM students WHERE Points=(SELECT max(points) FROM students);
# 2
SELECT avg(Points) FROM students;
#3
SELECT COUNT(ID)
FROM students 
WHERE Points = 500;
#4 
SELECT name FROM students
WHERE name LIKE '%s%';
#5
SELECT name
FROM students
ORDER BY points DESC; 
