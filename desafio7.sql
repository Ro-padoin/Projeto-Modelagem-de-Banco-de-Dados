-- Mostrar a relacao de todos os albuns produzidos por artistas:
-- exibir nome do artista (Alias artista);
-- exibir nome do album (Alias album);
-- exibir quantidade de pessoas seguidoras do artista (Alias seguidores);
-- ordenados: decrescente - seguidores ou alfabetica - artista ou album - alafabetica

SELECT
    art.artista AS artista,
    alb.album As album,
    COUNT(seg.artista_id) AS seguidores
FROM
    SpotifyClone.artistas AS art
    INNER JOIN SpotifyClone.seguindo AS seg ON seg.artista_id = art.artista_id
    INNER JOIN SpotifyClone.albuns AS alb ON alb.artista_id = art.artista_id
GROUP BY
    art.artista,
    alb.album
ORDER BY
    seguidores DESC,
    artista,
    album ASC;