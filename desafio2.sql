-- Criar uma querie que exiba 3 colunas na sequencia:
-- quantidade total de cancoes (Alias cancoes);
-- quantidade total de artistas (Alias artistas);
-- quantidade de albuns (Alias albuns).

SELECT
  COUNT(DISTINCT can.cancao_id) AS cancoes,
  COUNT(DISTINCT art.artista_id) AS artistas,
  COUNT(DISTINCT alb.album_id) AS albuns
FROM
  SpotifyClone.cancoes AS can
  INNER JOIN SpotifyClone.artistas AS art
  INNER JOIN SpotifyClone.albuns AS alb;