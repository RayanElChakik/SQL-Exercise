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
    Graduation date
);

INSERT INTO graduates(Name,Age,Gender,Points)
SELECT name,Age,Gender,Points
FROM students
WHERE name="Layal";

UPDATE graduates 
SET Graduation = DATE('2018-09-08')
WHERE Name = "Layal";

DELETE FROM students WHERE name="Layal";