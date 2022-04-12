SELECT
    art.artista AS artista,
    alb.album AS album
FROM
    SpotifyClone.artistas AS art
    INNER JOIN SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
    AND art.artista = 'Walter Phoenix';