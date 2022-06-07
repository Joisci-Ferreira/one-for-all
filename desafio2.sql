SELECT
  COUNT(DISTINCT SA.song_name) AS 'cancoes',
  COUNT(DISTINCT A.artist_name) AS 'artistas',
  COUNT(DISTINCT SA.album_id) AS 'albuns'
FROM 
   SpotifyClone.songs AS SA
   INNER JOIN SpotifyClone.artists AS A;  
