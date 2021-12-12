SELECT name FROM students ;
SELECT * FROM students WHERE Age>30;
SELECT name FROM students WHERE Age=30 AND Gender="F";
SELECT Points FROM students WHERE Name="Alex";
INSERT INTO students VALUES(7,"Rayan",25,"M",500);
UPDATE students SET Points=Points+1 WHERE name="Basma" ;
UPDATE students SET Points=Points-1 WHERE name="Alex" ;

