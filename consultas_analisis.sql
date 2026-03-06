USE NetflixDB;

-- CONSULTA 1: ¿Cuáles son las series más recientes de Ciencia Ficción?
-- (Demuestra: Filtrado con WHERE y Ordenamiento)
SELECT titulo, año_lanzamiento, genero 
FROM Series 
WHERE genero = 'Ciencia ficción'
ORDER BY año_lanzamiento DESC;

-- CONSULTA 2: Ranking de los 5 episodios mejor calificados en IMDb
-- (Demuestra: Selección de columnas específicas y límites)
SELECT s.titulo AS serie, e.titulo AS episodio, e.rating_imdb
FROM Episodios e
JOIN Series s ON e.serie_id = s.serie_id
ORDER BY e.rating_imdb DESC
LIMIT 5;

-- CONSULTA 3: ¿Qué actores participan en la serie 'Breaking Bad'?
-- (Demuestra: JOIN de 3 tablas, la parte más importante de SQL)
SELECT a.nombre AS actor, actua.personaje
FROM Actores a
JOIN Actuaciones actua ON a.actor_id = actua.actor_id
JOIN Series s ON actua.serie_id = s.serie_id
WHERE s.titulo = 'Breaking Bad';

-- CONSULTA 4: Duración promedio de los episodios por serie
-- (Demuestra: Funciones de agregación como AVG y Agrupamiento)
SELECT s.titulo, AVG(e.duracion) AS duracion_promedio
FROM Series s
JOIN Episodios e ON s.serie_id = e.serie_id
GROUP BY s.titulo
ORDER BY duracion_promedio DESC;