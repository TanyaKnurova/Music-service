INSERT INTO genres(name) values
('Pop'),
('Country'),
('Rock'),
('Classical'),
('Jazz');

INSERT INTO performers(name) values
('Taylor Swift'),
('Miley Cyrus'),
('The Swingle Singers'),
('Thirty Seconds to Mars'),
('Queen');

INSERT INTO performers_genres values
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 4),
(3, 5),
(4, 3),
(5, 3);

INSERT INTO albums (name, year) values
('Fearless', 2008),
('Folklore', 2020),
('Bangerz', 2013),
('Plastic Hearts', 2020),
('Bach/Mozart:The Swingle Singers', 1998),
('La lutte des classes', 2019),
('A Beautiful Lie', 2005),
('Innuendo', 1991);

INSERT INTO albums_performers values
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(5, 8);

INSERT INTO tracks (name, duration, album_id) values
('Love Story', '00:03:56', 1),
('My Tears Ricochet', '00:04:15', 2),
('We cant stop', '00:03:51', 3), 
('Wrecking Ball', '00:03:41', 3),
('Prisoner', '00:02:49', 4),
('Libertango','00:02:49', 5),
('Andante from Sonata No. 2 for violin', '00:03:36', 6),
('A Beautiful Lie', '00:04:05', 7), 
('The Show Must Go On', '00:04:31', 8),
('myself', '00:02:56', 1),
('by myself', '00:01:15', 2),
('bemy self', '00:02:51', 3);

INSERT INTO collections (name, year) values
('Love', 2021),
('Greatest Hits II', 1991),
('00s Rock', 2020),
('Bande originale du film', 2013),
('Miley Cyrus-best', 2022),
('Classical music', 2018)
;

INSERT INTO tracks_collections values
(1, 1),
(2, 1),
(3, 5),
(4, 5),
(5, 5),
(6, 4),
(7, 6),
(8, 3),
(9, 2);
