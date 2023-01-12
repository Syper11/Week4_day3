SELECT *
FROM favorite_song;

FROM artist;

-- inner join
SELECT *
FROM artist
INNER JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id

SELECT *
FROM favorite_song
INNER JOIN artist
ON favorite_song.artist_id = artist.artist_id

SELECT song_name, album, artist_name
FROM favorite_song
INNER JOIN artist
ON favorite_song.artist_id = artist.artist_id


-- LEFT JOIN
SELECT song_name, album, artist_name
FROM artist
LEFT JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id

-- RIGHT JOIN
SELECT song_name, album, artist_name
FROM artist
RIGHT JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id

-- FULL JOIN
SELECT song_name, album, artist_name
FROM artist
FULL JOIN favorite_song
ON favorite_song.artist_id = artist.artist_id

 7