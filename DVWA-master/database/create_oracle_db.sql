/* Create a copy of the database and contents in Oracle */

CREATE TABLE users (
user_id NUMBER NOT NULL,
first_name varchar(20) DEFAULT NULL,
last_name varchar(20) DEFAULT NULL,
"user" varchar(20) DEFAULT NULL,
password varchar(20) DEFAULT NULL,
avatar varchar(20) DEFAULT NULL,
last_login TIMESTAMP,
failed_login NUMBER,
PRIMARY KEY (user_id)
);

CREATE TABLE guestbook
(comment_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
"comment" VARCHAR(100) DEFAULT NULL,
"name" VARCHAR(100) NOT NULL,
PRIMARY KEY (comment_id));

INSERT INTO users values ('1','admin','admin','admin',('password'),'admin.jpg', sysdate, '0');
INSERT INTO users values ('2','Gordon','Brown','gordonb',('abc123'),'gordonb.jpg', sysdate, '0');
INSERT INTO users values ('3','Hack','Me','1337',('charley'),'1337.jpg', sysdate, '0');
INSERT INTO users values ('4','Pablo','Picasso','pablo',('letmein'),'pablo.jpg', sysdate, '0');
INSERT INTO users values ('5','Bob','Smith','smithy',('password'),'smithy.jpg', sysdate, '0');

INSERT INTO guestbook ("comment", "name") VALUES ('What a brilliant app!', 'Marcel Marceau');
