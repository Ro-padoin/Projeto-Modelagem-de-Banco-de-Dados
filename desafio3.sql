SELECT usu.usuario AS usuario, 
COUNT(his.usuario_id) AS qtde_musicas_ouvidas,
ROUND((SUM(can.duracao)/60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS usu
INNER JOIN SpotifyClone.historico AS his
ON his.usuario_id = usu.usuario_id
INNER JOIN SpotifyClone.cancoes AS can
ON his.cancao_id = can.cancao_id
GROUP BY usu.usuario;

