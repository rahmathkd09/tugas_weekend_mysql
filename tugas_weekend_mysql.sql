USE day4
CREATE TABLE ramen_rating(
review INT,
brand VARCHAR(100),
variety VARCHAR(100),
style VARCHAR(100),
country VARCHAR(100),
stars FLOAT,
top_ten INT);

LOAD DATA INFILE 'd:/ramen_ratings.csv' 
INTO TABLE ramen_rating
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM ramen_rating WHERE stars > 4;
SELECT * FROM ramen_rating WHERE country='Japan';
SELECT review,brand,UCASE(variety),
style,country,top_ten FROM ramen_rating
LIMIT 5000;

tugas2:
CREATE TABLE netflix_shows(
show_id INT,
typi VARCHAR(100),
title VARCHAR(100),
director VARCHAR(100),
CAST VARCHAR(100),
country VARCHAR(100),
date_added DATE,
release_year YEAR,
rating VARCHAR(10),
duration VARCHAR(100),
listed_in VARCHAR(100),
DESCRIPTION TEXT);

LOAD DATA INFILE 'd:/netflix_titles.csv' 
INTO TABLE netflix_shows 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


SELECT * FROM netflix_shows WHERE duration='90 min';
SELECT * FROM netflix_shows WHERE country='Thailand';
SELECT * FROM netflix_shows WHERE release_year > 2015 LIMIT 5000;
