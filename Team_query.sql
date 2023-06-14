CREATE TABLE MensMajors (
    id int NOT NULL AUTO_INCREMENT,
    lname varchar(255) NOT NULL,
    fname varchar(255) NOT NULL,
    Major varchar(255) NOT NULL,
    Minor varchar(255),
    PRIMARY KEY (id)
);




INSERT INTO MensMajors(id, lname, fname, Major, Minor)
VALUES(0001,'Kpodo','Adnan','Computer Science',NULL),
(0002,'Saha','Topu','Computer Science','Mathematics'),
(0003,'Lopez','Denilson','Computer Science',NULL),
(0005,'Tlatelpa','Jaime','Criminal Justice',NULL),
(0010,'Sisk','Jake','Sports Management',NULL), 
(0011,'Chowdhury','Fahim','National Security',NULL), 
(0012,'Etienne','Dave','Criminal Justice',NULL), 
(0014,'Garcia','Jason','Criminal Justice',NULL), 
(0017,'Castro','Raphael','Biology',NULL), 
(0018,'Valez','David','Business Administration',NULL), 
(0019,'Palau','Josue','Business Administration',NULL), 
(0020,'Kimutai','Moses','Computer Science','Media Arts');

SELECT CONCAT(lname,' ',fname) AS 'Full Name', Major FROM MensMajors WHERE Major = 'Computer Science'; 

SELECT CONCAT(lname,' ',fname) AS 'Full Name' FROM MensMajors 
WHERE Minor IS NULL; 

DELETE FROM MensMajors WHERE lname = 'Jawneh'

SELECT * FROM MensMajors
WHERE minor IS NOT NULL;

CREATE TABLE WomensMajors(
id int NOT NULL AUTO_INCREMENT,
lname varchar(255) NOT NULL,
fname varchar(255) NOT NULL,
Major varchar(255) NOT NULL,
Minor varchar(255),
PRIMARY KEY (id)
);

INSERT INTO WomensMajors(id, lname, fname, Major, Minor)
VALUES(0001,'Adames','Ashley','Business Administration',NULL),
(0002,'Agutina','Polina','Business Administration',NULL),
(0003,'Boyd','Nyla','Exercise Science',NULL),
(0004,'Diouf','Arame','Exercise Science',NULL), 
(0005,'Lopez','Jackeline','Business Administration',NULL), 
(0006,'Ortiz','Tiffany','Computer Science',NULL), 
(0007,'Sabb','Destiny','Biology',NULL), 
(0008,'Tahmazian','Evie','Exercise Science',NULL),
(0009,'Worrell','Shantel','Business Administration',NULL),
(0013,'Young','Lamya','Biology',NULL);


SELECT CONCAT(fname,' ',lname) AS 'Full Name' FROM WomensMajors WHERE Major = 'Exercise Science';

SELECT CONCAT(fname,'',lname) AS 'Full Name' FROM MensMajors WHERE Major = 'Computer Science';

SELECT CONCAT(fname,'',lname) AS 'Full Name' FROM MensMajors 
WHERE Minor IS NULL
ORDER BY fname;


SELECT MensMajors.id, MensMajors.lname, WomensMajors.id, WomensMajors.lname, MensMajors.Major, WomensMajors.Major  FROM MensMajors
INNER JOIN WomensMajors ON MensMajors.Major = WomensMajors.Major
ORDER BY MensMajors.id, WomensMajors.id;


SELECT MensMajors.id, WomensMajors.id, MensMajors.lname, WomensMajors.lname, MensMajors.Major, WomensMajors.Major FROM MensMajors
LEFT JOIN WomensMajors ON MensMajors.Major = WomensMajors.Major
ORDER BY MensMajors.id, WomensMajors.id;


DESC MensMajors;

SELECT MensMajors.id, MensMajors.fname, MensMajors.lname, WomensMajors.id, WomensMajors.fname, WomensMajors.lname FROM MensMajors
INNER JOIN WomensMajors ON MensMajors.lname = WomensMajors.lname
WHERE MensMajors.lname = 'Lopez';

SELECT CONCAT(fname,' ',lname) AS 'Full Name' FROM WomensMajors WHERE Major = 'Exercise Science';

SELECT CONCAT(fname,' ',lname) AS 'Full Name' FROM MensMajors WHERE Major = 'Marketing';

SELECT DISTINCT MensMajors.lname, MensMajors.fname, WomensMajors.lname, WomensMajors.fname FROM MensMajors
INNER JOIN WomensMajors ON MensMajors.Major = WomensMajors.Major
WHERE WomensMajors.Major = "Business Administration";


SELECT CONCAT(fname,' ', lname) AS "Full Name" FROM WomensMajors.lname, MensMajor.lname WHERE lname = "Lopez";

SELECT MensMajors.id, MensMajors.fname, MensMajors.lname, MensMajors.Minor, WomensMajors.id, WomensMajors.fname, WomensMajors.lname, WomensMajors.Minor FROM MensMajors
INNER JOIN WomensMajors ON MensMajors.Minor = WomensMajors.Minor 
WHERE MensMajors.Minor IS NULL;

CREATE TABLE Coaches(
id INT NOT NULL AUTO_INCREMENT,
fname VARCHAR(255),
lname VARCHAR(255),
sex VARCHAR(255),
PRIMARY KEY(id)
);

INSERT INTO Coaches(id, lname, fname,sex)
VALUES(0001,'Oneal','Patrick','M'),(0002,'Blango','Wahjerjay','F'),
(0003,'Chaudhry','Ali','M'),(0004,'Faraone','Chris','M');

SELECT CONCAT(fname,' ',lname) AS 'full name' FROM Coaches WHERE sex = 'M';

SELECT CONCAT(fname,' ',lname) AS 'full name' FROM Coaches WHERE sex = 'F';

SELECT CONCAT(fname,' ',lname) AS "Full Name" FROM WomensMajors WHERE Major = "Finance";


SELECT DISTINCT COUNT(Major) AS "# Of Majors" FROM MensMajors;


UPDATE WomensMajors
SET Major = "Business Administration", fname = "Lamaya"
WHERE fname = "Lamya";

DELETE FROM MensMajors WHERE fname = "Moses";
