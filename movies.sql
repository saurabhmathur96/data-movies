CREATE TABLE Movies (
id INTEGER PRIMARY KEY,
title varchar(250),
year integer,
budget integer,
length integer,
imdb_rating integer,
imdb_votes integer
);

CREATE TABLE Ratings (id INTEGER PRIMARY KEY, movie_id integer, score varchar(10), outof10 float, votes integer);
CREATE TABLE Genres (id INTEGER PRIMARY KEY , movie_id integer, genre varchar(50));

CREATE INDEX title on Movies (title);
CREATE INDEX year on Movies (year);
CREATE INDEX id on Movies (id);
CREATE INDEX rid on Ratings (id);
CREATE INDEX rmid on Ratings (movie_id);
CREATE INDEX gid on Genres (id);
CREATE INDEX gmid on Genres (movie_id);