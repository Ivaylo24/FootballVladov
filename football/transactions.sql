START TRANSACTION;

INSERT INTO Matches (match_id, date, home_team_id, away_team_id, stadium) VALUES (1, '2024-06-10', 1, 2, 'Main Stadium');

UPDATE Teams SET wins = wins + 1 WHERE team_id = 1;
UPDATE Teams SET losses = losses + 1 WHERE team_id = 2;

COMMIT;
