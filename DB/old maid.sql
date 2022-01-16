DROP TABLE IF EXISTS board;
CREATE TABLE board (
  card_id tinyint NOT NULL,
  c_score tinyint NOT NULL,
  c_position nvarchar (255) NOT NULL CHECK([c_position] IN ('deck','stack','top', 'hand1','hand2','won1','won2')) DEFAULT 'deck',
  c_order tinyint DEFAULT NULL
);

--
-- Άδειασμα δεδομένων του πίνακα `board`
--

INSERT INTO board VALUES (1, 1, 1, 'deck', NULL);
INSERT INTO board VALUES (2, 2, 0, 'deck', NULL);
INSERT INTO board VALUES (3, 3, 0, 'deck', NULL);
INSERT INTO board VALUES (4, 4, 0, 'deck', NULL);
INSERT INTO board VALUES (5, 5, 0, 'deck', NULL);
INSERT INTO board VALUES (6, 6, 0, 'deck', NULL);
INSERT INTO board VALUES (7, 7, 0, 'deck', NULL);
INSERT INTO board VALUES (8, 8, 0, 'deck', NULL);
INSERT INTO board VALUES (9, 9, 0, 'deck', NULL);
INSERT INTO board VALUES (10, 10, 1, 'deck', NULL);
INSERT INTO board VALUES (11, 11, 1, 'deck', NULL);
INSERT INTO board VALUES (12, 12, 1, 'deck', NULL);
INSERT INTO board VALUES (13, 13, 1, 'deck', NULL);
INSERT INTO board VALUES (14, 1, 1, 'deck', NULL);
INSERT INTO board VALUES (15, 2, 0, 'deck', NULL);
INSERT INTO board VALUES (16, 3, 0, 'deck', NULL);
INSERT INTO board VALUES (17, 4, 0, 'deck', NULL);
INSERT INTO board VALUES (18, 5, 0, 'deck', NULL);
INSERT INTO board VALUES (19, 6, 0, 'deck', NULL);
INSERT INTO board VALUES (20, 7, 0, 'deck', NULL);
INSERT INTO board VALUES (21, 8, 0, 'deck', NULL);
INSERT INTO board VALUES (22, 9, 0, 'deck', NULL);
INSERT INTO board VALUES (23, 10, 1, 'deck', NULL);
INSERT INTO board VALUES (24, 11, 1, 'deck', NULL);
INSERT INTO board VALUES (25, 12, 1, 'deck', NULL);
INSERT INTO board VALUES (26, 13, 1, 'deck', NULL);
INSERT INTO board VALUES (27, 1, 1, 'deck', NULL);
INSERT INTO board VALUES (28, 2, 0, 'deck', NULL);
INSERT INTO board VALUES (29, 3, 0, 'deck', NULL);
INSERT INTO board VALUES (30, 4, 0, 'deck', NULL);
INSERT INTO board VALUES (31, 5, 0, 'deck', NULL);
INSERT INTO board VALUES (32, 6, 0, 'deck', NULL);
INSERT INTO board VALUES (33, 7, 0, 'deck', NULL);
INSERT INTO board VALUES (34, 8, 0, 'deck', NULL);
INSERT INTO board VALUES (35, 9, 0, 'deck', NULL);
INSERT INTO board VALUES (36, 10, 2, 'deck', NULL);
INSERT INTO board VALUES (37, 11, 1, 'deck', NULL);
INSERT INTO board VALUES (38, 12, 1, 'deck', NULL);
INSERT INTO board VALUES (39, 13, 1, 'deck', NULL);
INSERT INTO board VALUES (40, 1, 1, 'deck', NULL);
INSERT INTO board VALUES (41, 2, 1, 'deck', NULL);
INSERT INTO board VALUES (42, 3, 0, 'deck', NULL);
INSERT INTO board VALUES (43, 4, 0, 'deck', NULL);
INSERT INTO board VALUES (44, 5, 0, 'deck', NULL);
INSERT INTO board VALUES (45, 6, 0, 'deck', NULL);
INSERT INTO board VALUES (46, 7, 0, 'deck', NULL);
INSERT INTO board VALUES (47, 8, 0, 'deck', NULL);
INSERT INTO board VALUES (48, 9, 0, 'deck', NULL);
INSERT INTO board VALUES (49, 10, 1, 'deck', NULL);
INSERT INTO board VALUES (50, 11, 1, 'deck', NULL);
INSERT INTO board VALUES (51, 12, 1, 'deck', NULL);
INSERT INTO board VALUES (52, 13, 1, 'deck', NULL);
-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `board_empty`
--

DROP TABLE IF EXISTS board_empty;
CREATE TABLE board_empty (
  card_id tinyint NOT NULL,
  c_score tinyint NOT NULL,
  c_position nvarchar(255)NOT NULL CHECK ([c_position] IN('deck','stack','top','hand1','hand2','won1','won2'))  DEFAULT 'deck',
  c_order tinyint DEFAULT NULL
);

--
-- Άδειασμα δεδομένων του πίνακα `board_empty`
--

INSERT INTO board_empty VALUES (1, 1, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (2, 2, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (3, 3, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (4, 4, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (5, 5, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (6, 6, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (7, 7, 0, 'deck', NULL);
INSERT INTO board_empty VALUES(8, 8, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (9, 9, 0, 'deck', NULL);
INSERT INTO board_empty VALUES(10, 10, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (11, 11, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (12, 12, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (13, 13, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (14, 1, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (15, 2, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (16, 3, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (17, 4, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (18, 5, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (19, 6, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (20, 7, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (21, 8, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (22, 9, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (23, 10, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (24, 11, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (25, 12, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (26, 13, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (27, 1, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (28, 2, 0, 'deck', NULL);
INSERT INTO board_empty VALUES(29, 3, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (30, 4, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (31, 5, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (32, 6, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (33, 7, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (34, 8, 0, 'deck', NULL);
INSERT INTO board_empty VALUES(35, 9, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (36, 10, 2, 'deck', NULL);
INSERT INTO board_empty VALUES (37, 11, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (38, 12, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (39, 13, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (40, 1, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (41, 2, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (42, 3, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (43, 4, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (44, 5, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (45, 6, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (46, 7, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (47, 8, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (48, 9, 0, 'deck', NULL);
INSERT INTO board_empty VALUES (49, 10, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (50, 11, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (51, 12, 1, 'deck', NULL);
INSERT INTO board_empty VALUES (52, 13, 1, 'deck', NULL);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `game_status`
--

DROP TABLE IF EXISTS game_status;
CREATE TABLE game_status (
  s_id int NOT NULL,
  g_status nvarchar (255) NOT NULL CHECK  ([g_status] IN  ('not active','initialized','started','ended','aborted'))  DEFAULT 'not active',
  p_turn tinyint DEFAULT NULL,
  result tinyint DEFAULT NULL,
  last_change timestamp NOT NULL 
);

--


--
-- Δείκτες `game_status`
--
DROP TRIGGER IF EXISTS `game_status_update`;
DELIMITER $$
CREATE TRIGGER `game_status_update` BEFORE UPDATE ON `game_status` FOR EACH ROW BEGIN
    	SET NEW.last_change = NOW();
	END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `players`
--

DROP TABLE IF EXISTS players;
CREATE TABLE players (
  p_id tinyint NOT NULL,
  username varchar  DEFAULT NULL,
  token varchar DEFAULT NULL,
  last_action timestamp NOT NULL 
);

--


