SELECT
    can.cancao AS nome,
    COUNT(his.cancao_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS can
    INNER JOIN SpotifyClone.historico AS his ON his.cancao_id = can.cancao_id
    INNER JOIN SpotifyClone.usuarios AS usu ON (his.usuario_id = usu.usuario_id)
    AND (
        usu.plano_id = 1
        OR usu.plano_id = 3
    )
GROUP BY
    nome
ORDER BY
    nome;