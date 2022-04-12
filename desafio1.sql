CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE IF NOT EXISTS SpotifyClone.planos (
    plano_id INT auto_increment PRIMARY KEY NOT NULL,
    plano VARCHAR(30) NOT NULL,
    valor DECIMAL(3,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS SpotifyClone.usuarios (
    usuario_id INT auto_increment PRIMARY KEY NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    data_assinatura DATETIME,
    FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
);

CREATE TABLE IF NOT EXISTS SpotifyClone.cancoes (
    cancao_id INT auto_increment PRIMARY KEY NOT NULL,
    cancao VARCHAR(100) NOT NULL,
    duracao INT
);

CREATE TABLE IF NOT EXISTS SpotifyClone.artistas (
    artista_id INT auto_increment PRIMARY KEY NOT NULL,
    artista VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS SpotifyClone.albuns (
    album_id INT auto_increment PRIMARY KEY NOT NULL,
    album VARCHAR(150) NOT NULL,
    artista_id INT NOT NULL, 
	cancao_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id),
    ano_lancamento YEAR
);

CREATE TABLE IF NOT EXISTS SpotifyClone.historico (
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    data_reproducao DATEhistorico,
     FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
	FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id),
    CONSTRAINT PRIMARY KEY(usuario_id, cancao_id)
);

CREATE TABLE IF NOT EXISTS SpotifyClone.seguindo (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
	FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
	FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
    CONSTRAINT PRIMARY KEY(usuario_id, artista_id)
);

INSERT INTO SpotifyClone.planos (plano_id, plano, valor)
VALUES
  (1, 'gratuito', 0.00),
  (2, 'universitário', 5.99),
  (3, 'pessoal', 6.99),
  (4, 'familiar', 7.99);

INSERT INTO SpotifyClone.usuarios (usuario_id, usuario, idade, plano_id, data_assinatura)
VALUES
  (1, 'Thati', 23, 1, '2019-10-20'),
  (2, 'Cintia', 35, 4, '2017-12-30'),
  (3, 'Bill', 20, 2, '2019-06-05'),
  (4, 'Roger', 45, 3, '2020-05-13'),
  (5, 'Norman', 58, 3, '2017-02-17'),
  (6, 'Patrick', 33, 4, '2017-01-06'),
  (7, 'Vivian', 26, 2, '2018-01-05'),
  (8, 'Carol', 19, 2, '2018-02-14'),
  (9, 'Angelina', 42, 4, '2018-04-29'),
  (10, 'Paul', 46, 4, '2017-01-17');

INSERT INTO SpotifyClone.cancoes (cancao_id, cancao, duracao)
VALUES
  (1, 'Soul For Us', 200),
  (2, 'Reflections Of Magic', 163),
  (3, 'Dance With Her Own', 116),
  (4, 'Time Fireworks', 203),
  (5, 'Troubles Of My Inner Fire', 152),
  (6, 'Magic Circus', 105),
  (7, 'Honey, So Do I', 207),
  (8, 'Sweetie, Let\'s Go Wild', 139),
  (9, 'She Knows', 244),
  (10, 'Fantasy For Me', 100),  
  (11, 'Celebration Of More', 146 ),
  (12, 'Rock His Everything', 223 ),
  (13, 'Home Forever', 231 ),
  (14, 'Diamond Power', 241 ),
  (15, 'Let\'s Be Silly', 132),
  (16, 'Thang Of Thunder', 240 ),
  (17, 'Words Of Her Life', 185),
  (18, 'Without My Streets', 176),
  (19, 'Need Of The Evening', 190),
  (20, 'History Of My Roses', 222),
  (21, 'Without My Love', 111),
  (22, 'Walking And Game', 123),
  (23, 'Young And Father', 197),
  (24, 'Finding My Traditions', 179),
  (25, 'Walking And Man', 229),
  (26, 'Hard And Time', 135),
  (27, 'Honey, I\'m A Lone Wolf', 150),
  (28, 'She Thinks I Won\'t Stay Tonight', 166),
  (29, 'He Heard You\'re Bad For Me', 154),
  (30, 'He Hopes We Cant Stay', 210),
  (31, 'I Know I Know', 117),
  (32, 'He\'s Walking Away', 159),
  (33, 'He\'s Trouble', 138),
  (34, 'I Heard I Want To Bo Alone', 120),
  (35, 'I Ride Alone', 151),
  (36, 'Honey', 79),
  (37, 'You Cheated On Me', 95),
  (38, 'Wouldn\'t It Be Nice', 213),
  (39, 'Baby', 136),
  (40, 'You Make Me Feel So..', 83);

INSERT INTO SpotifyClone.artistas (artista_id, artista)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Freedie Shannon'),
  (3, 'Lance Day'),
  (4, 'Peter Strong'),
  (5, 'Tyler Isle'),
  (6, 'Fog');

INSERT INTO SpotifyClone.seguindo (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 4),
  (3, 1),
  (4, 2),
  (5, 5),
  (5, 6),
  (6, 6), 
  (6, 3),
  (6, 1),
  (7, 4),
  (7, 5),
  (8, 5),
  (8, 1),
  (9, 6),
  (9, 2),
  (9, 3),
  (10, 6),
  (10, 4);
  
INSERT INTO SpotifyClone.historico (usuario_id, cancao_id, data_reproducao)
VALUES
  (1, 36, '2020-02-28 10:45:55'),
  (1, 33, '2020-05-02 05:30:35'),
  (1, 40, '2020-03-06 11:22:33'),
  (1, 4, '2020-08-05 08:05:17'),
  (1, 20, '2020-09-14 16:32:22'),
  (2, 17, '2020-01-02 07:40:33'),
  (2, 6, '2020-05-16 06:16:22'),
  (2, 34, '2020-10-09 12:27:48'),
  (2, 1, '2020-09-21 13:14:46'),
  (3, 21, '2020-11-13 16:55:13'),
  (3, 3, '2020-12-05 18:38:30'),
  (3, 7, '2020-07-30 10:00:00'),
  (4, 23, '2021-08-15 17:10:10'),
  (4, 19, '2021-07-10 15:20:30'),
  (4, 15, '2021-01-09 01:44:33'),
  (5, 16, '2020-07-03 19:33:28'),
  (5, 24, '2017-02-24 21:14:22'),
  (5, 4, '2020-08-06 15:23:43'),
  (5, 27, '2020-11-10 13:52:27'),
  (6, 37, '2019-02-07 20:33:48'), 
  (6, 8, '2017-01-24 00:31:17'),
  (6, 9, '2017-10-12 12:35:20'),
  (6, 32, '2018-05-29 14:56:41'),
  (7, 30, '2018-05-09 22:30:49'),
  (7, 31, '2020-07-27 12:52:58'),
  (7, 2, '2018-01-16 18:40:43'),
  (8, 1, '2018-03-21 16:56:40'),
  (8, 39, '2020-10-18 13:38:05'),
  (8, 11, '019-05-25 08:14:03'),
  (8, 10, '2021-08-15 21:37:09'),
  (9, 29, '2021-05-24 17:23:45'),
  (9, 36, '2018-12-07 22:48:52'),
  (9, 28, '2021-03-14 06:14:26'),
  (9, 25, '2020-04-01 03:36:00'),
  (10, 12, '2017-02-06 08:21:34'),
  (10, 34, '2017-12-04 05:33:43'),
  (10, 24, '2017-07-27 05:24:49'),
  (10, 13, '2017-12-25 01:03:57');

