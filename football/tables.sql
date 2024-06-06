CREATE TABLE Teams (
    team_id INT PRIMARY KEY,
    name VARCHAR(100),
    stadium VARCHAR(100),
    coach VARCHAR(100)
);

CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    date DATE,
    home_team_id INT,
    away_team_id INT,
    stadium VARCHAR(100),
    FOREIGN KEY (home_team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (away_team_id) REFERENCES Teams(team_id)
);

CREATE TABLE Goals (
    goal_id INT PRIMARY KEY,
    match_id INT,
    player_id INT,
    minute INT,
    FOREIGN KEY (match_id) REFERENCES Matches(match_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

CREATE TABLE Sponsors (
    sponsor_id INT PRIMARY KEY,
    name VARCHAR(100),
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);
