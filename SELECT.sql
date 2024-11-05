--Название и продолжительность самого длительного трека
SELECT name, duration
FROM tracks
ORDER BY duration DESC
LIMIT 1;

--Название треков, продолжительность которых не менее 3,5 минут
SELECT name
FROM tracks
WHERE duration >= '00:03:30';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name
FROM collections
WHERE year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова
SELECT name
FROM performers 
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my»
SELECT name
FROM tracks 
WHERE STRING_TO_ARRAY(LOWER(name), ' ') && ARRAY['my', 'мой'];

--Количество исполнителей в каждом жанре.
SELECT g.name, COUNT(performer_id) FROM performers_genres pg 
LEFT JOIN genres g ON pg.genre_id = g.genre_id
GROUP BY g.name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(track_id) FROM tracks t 
LEFT JOIN albums a ON t.album_id = a.album_id 
WHERE a.year BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому.
SELECT a.name, to_char(date_trunc('second', AVG(t.duration)), 'HH24:MI:SS') as average_duration FROM tracks t 
LEFT JOIN albums a ON t.album_id = a.album_id
GROUP BY a.album_id;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT name FROM performers p  
EXCEPT
SELECT p.name FROM albums_performers ap 
JOIN albums a ON a.album_id = ap.album_id
JOIN performers p ON p.performer_id = ap.performer_id 
WHERE a.year = 2020;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT distinct c.name FROM collections c
JOIN tracks_collections tc ON tc.collection_id  = c.collection_id 
JOIN tracks t ON t.track_id = tc.track_id 
JOIN albums a ON a.album_id = t.album_id 
JOIN albums_performers ap ON ap.album_id = a.album_id 
JOIN performers p on p.performer_id = ap.performer_id
WHERE p.name = 'Thirty Seconds to Mars';