SELECT
  COUNT(H.song_id) AS 'quantidade_musicas_no_historico'
FROM
  SpotifyClone.historys AS H,
  SpotifyClone.users AS U
WHERE H.user_id = U.user_id
AND U.user_name = 'Bill';    