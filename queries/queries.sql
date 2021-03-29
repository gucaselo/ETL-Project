-- Awarded Movies including Movie ID, Movie Title, Year, Award category
SELECT m.movie_id, m.movie_title, m.year, oc.award_category
FROM movies AS m
INNER JOIN movie_awards AS ma ON
m.movie_id = ma.movie_id
INNER JOIN oscar_categories AS oc ON
ma.oscar_id = oc.oscar_id;

-- Awarded Directors including Directors name and Award category
SELECT d.director_name, oc.award_category
FROM directors AS d
INNER JOIN directing_awards AS da ON
d.director_id = da.director_id
INNER JOIN oscar_categories AS oc ON
da.oscar_id = oc.oscar_id;

-- Awarded Directors including Directors name, Award category and Movie title
SELECT d.director_name, oc.award_category, m.movie_title
FROM directors AS d
INNER JOIN directing_awards AS da ON
d.director_id = da.director_id
INNER JOIN oscar_categories AS oc ON
da.oscar_id = oc.oscar_id
INNER JOIN movies AS m ON
d.director_id = m.director_id; 

-- Awarded director for Movie 'Avatar' including Directors name, Award category, Movie title and Movie year
SELECT d.director_name, oc.award_category, m.movie_title, m.year
FROM directors AS d
INNER JOIN directing_awards AS da ON
d.director_id = da.director_id
INNER JOIN oscar_categories AS oc ON
da.oscar_id = oc.oscar_id
INNER JOIN movies AS m ON
d.director_id = m.director_id 
WHERE m.movie_title = 'Avatar';