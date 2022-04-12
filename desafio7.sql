SELECT
art.artista AS artista,
alb.album As album,
COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.seguindo AS seg
ON seg.artista_id = art.artista_id
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista_id = art.artista_id
GROUP BY art.artista, alb.album
ORDER BY seguidores DESC, artista, album ASC;