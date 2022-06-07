SELECT
  A.artist_name AS 'artista',
  AB.album_name AS 'album'
FROM
  SpotifyClone.albums AS AB
INNER JOIN  
  SpotifyClone.artists AS A
WHERE AB.artist_id = A.artist_id
AND A.artists = 'Walter Phoenix' 
GROUP BY artists, albums
ORDER BY albums; 