SELECT
  A.artist_name AS 'artista',
  AB.album_name AS 'album',
  COUNT(FA.user_id) AS 'seguidores'
FROM
  SpotifyClone.artists AS A
INNER JOIN
  SpotifyClone.albums AS AB
ON AB.artist_id = A.artist_id
INNER JOIN
  SpotifyClone.followArtists AS FA
ON FA.artist_id = A.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;        