-- Relacao de albuns produzidos por um artista especifico (usaremos 'Walter Phoenix'):
-- exibir nome do artista (Alias artista);
-- exibir nome do album (Alias album);
-- ordenados em ordem alfabetica pelo album.

SELECT
    art.artista AS artista,
    alb.album AS album
FROM
    SpotifyClone.artistas AS art
    INNER JOIN SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
    AND art.artista = 'Walter Phoenix';