CREATE TRIGGER before_player_insert
BEFORE INSERT ON Players
FOR EACH ROW
BEGIN
    IF (SELECT COUNT(*) FROM Teams WHERE team_id = NEW.team_id) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Team does not exist';
    END IF;
END;

CREATE TRIGGER after_player_insert
AFTER INSERT ON Players
FOR EACH ROW
BEGIN
    INSERT INTO Log (action) VALUES ('Player added: ' || NEW.name);
END;

CREATE TRIGGER before_match_update
BEFORE UPDATE ON Matches
FOR EACH ROW
BEGIN
    IF (SELECT COUNT(*) FROM Stadiums WHERE name = NEW.stadium) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stadium does not exist';
    END IF;
END;

CREATE TRIGGER after_match_update
AFTER UPDATE ON Matches
FOR EACH ROW
BEGIN
    INSERT INTO Log (action) VALUES ('Match updated: ' || NEW.match_id);
END;
