SELECT
    can.cancao AS cancao,
    COUNT(his.cancao_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS can
    INNER JOIN SpotifyClone.historico AS his ON his.cancao_id = can.cancao_id
GROUP BY
    can.cancao
ORDER BY
    reproducoes DESC,
    can.cancao
LIMIT
    2;