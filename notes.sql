-- IMDB Design a DB for IMDB 
--   1. Movie should have multiple media(Video or Image)
--   2. Movie can belongs to multiple Genre
--   3. Movie can have multiple reviews and Review can belongs to a user 
--   4. Artist can have multiple skills 
--   5. Artist can perform multiple role in a single film

-- movie table creation:

CREATE TABLE movie (
    id INTEGER PRIMARY KEY,
    title TEXT,
    hero TEXT,
    img BLOB,
    Genre TEXT,
    skill TEXT,
);

--insert movie details in table:

Insert into movie
VALUES

(1,"Varisu","Vijay","https://encryptKxZ9h2Ak_JRPHyA&usqp=CAU","Drama,Action","Singer,Director","Son,Father"),
(2,"Thunivu","Ajith","https://encryptKxZ9h2Ak_JRPHyA&usqp=CAU","Thriller,Drama,Action","Singer,Dancer","Hero,Villain"),
(3,"KGF","Yash","https://encryptKxZ9h2Ak_JRPHyA&usqp=CAU","Drama,Action","Choreo,Director","Hero,Son");


--create user table

CREATE TABLE user (
    user_id INTEGER FOREIGN KEY,
    Review   text
);

--insert user details in tables

Insert into user
VALUES
(1,"Good,Average,Nice"),
(2,"Average,Nice,Poor"),
(3,"Good,Poor,Nice");



---query

Select * from movie
Inner join user
On id = user_id