SELECT
  A.artist_name AS 'artista',
  AB.album_name AS 'album'
FROM
  SpotifyClone.artists AS A
INNER JOIN  
  SpotifyClone.albums AS AB
ON A.artist_id = AB.artist_id
WHERE A.artist_name = 'Walter Phoenix' 
ORDER BY AB.album_name;
 