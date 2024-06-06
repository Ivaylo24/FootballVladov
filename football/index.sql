CREATE INDEX idx_player_name ON Players(name);

CREATE INDEX idx_team_match ON Matches(home_team_id, away_team_id);

CREATE INDEX idx_team_name_prefix ON Teams(name(10));
