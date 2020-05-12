DROP DATABASE IF EXISTS jsfr;

CREATE database jsfr;

USE jsfr;
 
CREATE table jsfrusers (
firstName varchar(50),
lastName varchar(50),
email varchar(50),
username VARCHAR(55),
userPassword varchar(55),
birthday date,
city varchar(50),
provOrState varchar(50),
country varchar (50),
gender varchar(50),
photo varchar (50)
);

-- some test accounts - scraped using selenium webdriver, photos saved to project's images folder - will find better way to save photos
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/testUsers.txt' INTO TABLE jsfrusers LINES TERMINATED BY '\t';
ALTER TABLE jsfrusers ADD userID INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

-- root test accounts
INSERT into jsfrusers (firstName, lastName, email, username, userPassword, birthday, city, provOrState, country, gender, photo) 
values ("John", "Smith", "js@gmail.com", "root", "1234", "2000-2-20", "Toronto", "Ontario", "Canada", "male", "profilepic0.png");

INSERT into jsfrusers (firstName, lastName, email, username, userPassword, birthday, city, provOrState, country, gender, photo) 
values ("Jane", "Doe", "jd@gmail.com", "root2", "4321", "2000-2-20", "Oakville", "Ontario", "Canada", "female", "profilepic2.png");
