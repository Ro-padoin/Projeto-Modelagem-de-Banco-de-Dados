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