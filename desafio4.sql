SELECT
  U.user_name AS 'usuario',
  IF (MAX(YEAR(H.reproduction_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM
  SpotifyClone.users AS U,
  SpotifyClone.historys AS H
WHERE U.user_id = H.user_id
GROUP BY U.user_name    
ORDER BY U.user_name;