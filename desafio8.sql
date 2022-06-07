SELECT
  A.artists AS 'artista',
  AB.albums AS 'album'
FROM
  SpotifyClone.albums AS AB
INNER JOIN  
  SpotifyClone.artists AS A
ON AB.artist_id = A.artist_id
WHERE A.artists = 'Walter Phoenix' 
GROUP BY artists, albums
ORDER BY albums; 