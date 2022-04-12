SELECT
    ROUND(MIN(pla.valor), 2) AS faturamento_minimo,
    ROUND(MAX(pla.valor), 2) AS faturamento_maximo,
    ROUND(AVG(pla.valor), 2) AS faturamento_medio,
    ROUND(SUM(pla.valor), 2) AS faturamento_total
FROM
    SpotifyClone.planos AS pla
    INNER JOIN SpotifyClone.usuarios AS usu ON pla.plano_id = usu.plano_id;