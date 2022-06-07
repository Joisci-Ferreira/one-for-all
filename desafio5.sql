SELECT
  S.song_name AS cancao,
  COUNT(H.song_id) AS reproducoes
FROM
  SpotifyClone.historys AS H
INNER JOIN
  SpotifyClone.songs AS S
ON H.song_id = S.song_id
GROUP BY H.song_id
ORDER BY reproducoes DESC, cancao LIMIT 2;     