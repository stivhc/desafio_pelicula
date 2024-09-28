-- Crear base de datos llamada pelicula
CREATE DATABASE peliculas;

-- Conectarse a la base de datos
\c peliculas;

-- Crear Tabla Pelicula
CREATE TABLE peliculas (
    id SERIAL PRIMARY KEY,
    pelicula VARCHAR(255) NOT NULL,
    anio_estreno INT,
    director VARCHAR(255)
);

-- Crear Tabla Reparto
CREATE TABLE reparto (
    id SERIAL PRIMARY KEY,
    id_pelicula INT REFERENCES peliculas(id),
    actor VARCHAR(255)
);

--copia desde archivo peliculas.csv
\copy peliculas(id, pelicula, anio_estreno, director) FROM 'C:/Users/esteb/Downloads/a/peliculas.csv' DELIMITER ',' CSV HEADER;
  
--copia desde archivo reportes.csv
\copy peliculas(id, pelicula, anio_estreno, director) FROM 'C:/Users/esteb/Downloads/a/reparto.csv' DELIMITER ',' CSV HEADER;

--Obtener ID de la película “Titanic”.
SELECT id from peliculas where pelicula = 'Titanic';

-- Listar todos los actores que aparecen en la película "Titanic"
SELECT actor from reparto  WHERE id_pelicula = (SELECT id FROM peliculas WHERE pelicula = 'Titanic');

-- Películas del top 100 en que participa Harrison Ford
SELECT COUNT(*) FROM reparto INNER JOIN peliculas ON reparto.id_pelicula = peliculas.id WHERE actor = 'Harrison Ford';

-- Películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente
SELECT pelicula FROM peliculas WHERE anio_estreno BETWEEN 1990 AND 1999 ORDER BY pelicula ASC;

-- Títulos con su longitud
SELECT pelicula , LENGTH(pelicula) AS longitud_titulo FROM peliculas;

-- Longitud más grande entre todos los títulos de las películas
SELECT MAX(LENGTH(pelicula)) AS longitud_maxima FROM peliculas;



