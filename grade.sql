CREATE DATABASE gradesystem;

use gradesystem;

CREATE TABLE student
(
  sname   VARCHAR(20) NOT NULL,
  sid INT(10) NOT NULL AUTO_INCREMENT,
  gender VARCHAR(6),
  PRIMARY KEY(sid)
 );

CREATE TABLE course
(
  cid      INT(10) AUTO_INCREMENT,
  cname    CHAR(20),
  PRIMARY KEY(cid)
 );
 
CREATE TABLE mark
(
  mid  INT(10) AUTO_INCREMENT,
  score INT(10),
  sid int NOT NULL,
  cid INT NOT NULL,
  PRIMARY KEY(mid),
  FOREIGN KEY(sid) REFERENCES student(sid),
  FOREIGN KEY(cid) REFERENCES course(cid)
 );
