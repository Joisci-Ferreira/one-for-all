SELECT
    S.song_name AS 'nome',
    COUNT(H.song_id) AS 'reproducoes'
FROM SpotifyClone.historys AS H
INNER JOIN SpotifyClone.users AS U
ON H.user_id = U.user_id
INNER JOIN SpotifyClone.songs AS S
ON H.song_id = S.song_id
INNER JOIN SpotifyClone.plans AS P
ON P.plan_id = U.plan_id
WHERE P.plan_name = 1 OR P.plan_name = 4
GROUP BY S.song_name
ORDER BY S.song_name;
    