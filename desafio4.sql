-- Criar uma querie que exiba pessoas usuarias ativas no ano de 2021, com base na data mais atual:
-- nome da pessoa usuaria (Alias usuario);
-- mostrar se o usuario esta ativo ou inativo (Alias condica_usuario);
-- ordenar em ordem alfabetica.


SELECT
    usu.usuario AS usuario,
    IF (
        MAX(YEAR(his.data_reproducao)) = 2021,
        'Usuário ativo',
        'Usuário inativo'
    ) AS condicao_usuario
FROM
    SpotifyClone.usuarios AS usu
    INNER JOIN SpotifyClone.historico AS his ON usu.usuario_id = his.usuario_id
GROUP BY
    usu.usuario;