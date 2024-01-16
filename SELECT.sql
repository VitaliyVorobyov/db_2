-- Задание 1
SELECT track_name, duration
FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

SELECT track_name
FROM tracks
WHERE duration >= 3.5 * 60;

SELECT compilation_name
FROM compilations
WHERE release_year BETWEEN 2018 AND 2020;

SELECT artist_name
FROM artists
WHERE artist_name NOT LIKE '% %';

SELECT track_name
FROM tracks
WHERE LOWER(track_name) LIKE '%мой%' OR LOWER(track_name) LIKE '%my%';

-- Задание 2
SELECT album_name, COUNT(track_id) AS track_count
FROM albums
INNER JOIN tracks
ON albums.album_id = tracks.album_id
GROUP BY albums.album_id;

SELECT COUNT(*) AS track_count
FROM tracks
INNER JOIN albums
ON albums.album_id = tracks.album_id
WHERE release_year BETWEEN 2019 AND 2020;

SELECT album_id, AVG(duration) AS average_duration
FROM tracks
GROUP BY album_id;

SELECT artist_name
FROM artists
INNER JOIN artists_albums ON artists.artist_id = artists_albums.artist_id
INNER JOIN albums ON artists_albums.album_id = albums.album_id
WHERE release_year != 2020;

SELECT compilation_name
FROM compilations
INNER JOIN compilations_tracks ON compilations.compilation_id = compilations_tracks.compilation_id
INNER JOIN tracks ON compilations_tracks.track_id = tracks.track_id
INNER JOIN artists_albums ON tracks.album_id = artists_albums.album_id
INNER JOIN artists ON artists_albums.artist_id = artists.artist_id
WHERE artist_name = 'Our Last Night';
