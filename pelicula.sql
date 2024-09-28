SELECT id, "Pelicula", "Año estreno", "Director"
FROM public.peliculas;
select id from peliculas where "Pelicula" = 'Titanic';
SELECT actor from reparto  WHERE id_pelicula = (SELECT id FROM peliculas WHERE "Pelicula" = 'Titanic');
SELECT COUNT(*) FROM reparto INNER JOIN peliculas ON reparto.id_pelicula = peliculas.id WHERE actor = 'Harrison Ford';
SELECT "Pelicula" FROM peliculas WHERE "Año estreno" BETWEEN 1990 AND 1999 ORDER BY "Pelicula" ASC;
SELECT "Pelicula" , LENGTH("Pelicula") AS longitud_titulo FROM peliculas;
SELECT MAX(LENGTH("Pelicula")) AS longitud_maxima FROM peliculas;



