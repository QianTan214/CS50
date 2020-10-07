--In 8.sql, write a SQL query to list the names of all people who starred in Toy Story.
--Your query should output a table with a single column for the name of each person.
--You may assume that there is only one movie in the database with the title Toy Story.
--cat filename.sql | sqlite3 movies.db


select name from people
join stars on people.id = stars.person_id
join movies on stars.movie_id = movies.id
where movies.title = "Toy Story";


