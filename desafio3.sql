SELECT
  U.user_name AS 'usuario',
  COUNT(H.user_id) AS 'qtde_musicas_ouvidas',
  ROUND(SUM(S.seconds_duration) / 60, 2) AS 'total_minutos'
FROM
  SpotifyClone.users AS U,
  SpotifyClone.historys  AS H,
  SpotifyClone.songs AS S
WHERE
  U.user_id = H.user_id
AND
  H.song_id = S.song_id
GROUP BY user_name
ORDER BY user_name;  
