-- Encontrar as duas musicas mais tocadas no momento e apresentar em duas colunas:
-- nome da cancao (Alias cancao);
-- quantidade de pessoas que ja escutaram a mesma (Alias reproducoes);
-- ordenar em ordem decrescente com base nas reproducoes ou em ordem alfabetica pelo nome da cancao.

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