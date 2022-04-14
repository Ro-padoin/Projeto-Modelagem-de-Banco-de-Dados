-- Informacoes sobre o faturamento da empresa, baseado nos planos de assinatura:
-- exibir o menor valor de plano pago por uma pessoa usuaria (Alias faturamento_minimo);
-- exibir o maior valor de plano pago por uma pessoa usuaria (Alias faturamento_maximo);
-- exibir a media de valor de todos os planos pagos pelas pessoas usuarias (Alias faturamento_medio);
-- exibir o valor total obtido com todos os planos das pessoas usuarias (Alias faturamento_total);

SELECT
    ROUND(MIN(pla.valor), 2) AS faturamento_minimo,
    ROUND(MAX(pla.valor), 2) AS faturamento_maximo,
    ROUND(AVG(pla.valor), 2) AS faturamento_medio,
    ROUND(SUM(pla.valor), 2) AS faturamento_total
FROM
    SpotifyClone.planos AS pla
    INNER JOIN SpotifyClone.usuarios AS usu ON pla.plano_id = usu.plano_id;