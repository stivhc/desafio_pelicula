# Proyecto: Definición de Tablas de Películas
## Descripción General

Este proyecto tiene como objetivo la creación de una base de datos para un sitio web dedicado al mundo cinematográfico, donde los usuarios podrán buscar detalles de las 100 películas más populares. El archivo pelicula.sql contiene las instrucciones SQL necesarias para crear y manipular esta base de datos, permitiendo una variedad de consultas interesantes sobre las películas y los actores que participan en ellas.

La base de datos está compuesta por dos tablas principales: peliculas y reparto. Los datos para poblar estas tablas se obtienen de los archivos CSV proporcionados, ```peliculas.csv``` y ```reparto.csv```.

## Contenido del Archivo pelicula.sql

El script SQL se encarga de cumplir con los siguientes requerimientos:
### 1. Creación de la Base de Datos

El script comienza creando una base de datos llamada peliculas. Esta base de datos albergará la información necesaria para la visualización y consulta de detalles sobre las películas y su reparto.

### 2. Creación de Tablas

Dentro de la base de datos peliculas, se crean las tablas peliculas y reparto, cada una representando distintos aspectos de la información cinematográfica:

  * Tabla peliculas: Esta tabla almacena la información básica de las películas, incluyendo el título, año de estreno, género, duración, entre otros campos relevantes.
  
  * Tabla reparto: Esta tabla contiene información sobre los actores que participaron en cada película, incluyendo los IDs de películas y actores, así como detalles adicionales que puedan ser útiles.

### 3. Carga de Datos desde los Archivos CSV

El script contiene instrucciones para cargar los datos de los archivos CSV ```peliculas.csv``` y ```reparto.csv``` en las respectivas tablas peliculas y reparto. Esto permite que los datos estén disponibles para ser consultados y manipulados.

### 4. Consultas Solicitadas

El archivo ```pelicula.sql``` incluye diversas consultas para extraer información interesante de la base de datos, tales como:

  1. Obtener el ID de la película "Titanic"
  2. Listar a todos los actores que aparecen en la película "Titanic"
  3. Consultar cuántas películas del top 100 tienen a Harrison Ford en su reparto
  4. Listar películas estrenadas entre 1990 y 1999, ordenadas por título ascendente
  5. Mostrar los títulos de películas con su longitud (renombrada como longitud_titulo)
  6. Determinar la longitud más grande entre todos los títulos de las películas
