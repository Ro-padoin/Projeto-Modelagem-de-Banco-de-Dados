SELECT COUNT(his.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico AS his
INNER JOIN SpotifyClone.usuarios AS usu
ON his.usuario_id = usu.usuario_id AND usu.usuario = 'Bill';