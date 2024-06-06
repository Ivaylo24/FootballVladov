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

INSERT INTO Teams (team_id, name, stadium, coach) VALUES
(1, 'Team A', 'Stadium A', 'Coach A'),
(2, 'Team B', 'Stadium B', 'Coach B'),
(3, 'Team C', 'Stadium C', 'Coach C');


INSERT INTO Players (player_id, name, position, team_id) VALUES
(1, 'Player 1', 'Forward', 1),
(2, 'Player 2', 'Midfielder', 1),
(3, 'Player 3', 'Defender', 1),
(4, 'Player 4', 'Forward', 2),
(5, 'Player 5', 'Midfielder', 2),
(6, 'Player 6', 'Defender', 2),
(7, 'Player 7', 'Forward', 3),
(8, 'Player 8', 'Midfielder', 3);

INSERT INTO Matches (match_id, date, home_team_id, away_team_id, stadium) VALUES
(1, '2024-06-01', 1, 2, 'Stadium A'),
(2, '2024-06-02', 2, 3, 'Stadium B'),
(3, '2024-06-03', 3, 1, 'Stadium C');
(9, 'Player 9', 'Defender', 3);

INSERT INTO Goals (goal_id, match_id, player_id, minute) VALUES
(1, 1, 1, 10),
(2, 1, 4, 20),
(3, 2, 5, 30),
(4, 2, 8, 40),
(5, 3, 7, 50),
(6, 3, 3, 60);


INSERT INTO Sponsors (sponsor_id, name, team_id) VALUES
(1, 'Sponsor A', 1),
(2, 'Sponsor B', 2),
(3, 'Sponsor C', 3);

-- Вмъкване на отбори
INSERT INTO Teams (team_id, name, stadium, coach) VALUES
(1, 'Team A', 'Stadium A', 'Coach A'),
(2, 'Team B', 'Stadium B', 'Coach B'),
(3, 'Team C', 'Stadium C', 'Coach C');

-- Вмъкване на играчи
INSERT INTO Players (player_id, name, position, team_id) VALUES
(1, 'Player 1', 'Forward', 1),
(2, 'Player 2', 'Midfielder', 1),
(3, 'Player 3', 'Defender', 1),
(4, 'Player 4', 'Forward', 2),
(5, 'Player 5', 'Midfielder', 2),
(6, 'Player 6', 'Defender', 2),
(7, 'Player 7', 'Forward', 3),
(8, 'Player 8', 'Midfielder', 3),
(9, 'Player 9', 'Defender', 3);

-- Вмъкване на мачове
INSERT INTO Matches (match_id, date, home_team_id, away_team_id, stadium) VALUES
(1, '2024-06-01', 1, 2, 'Stadium A'),
(2, '2024-06-02', 2, 3, 'Stadium B'),
(3, '2024-06-03', 3, 1, 'Stadium C');

-- Вмъкване на голове
INSERT INTO Goals (goal_id, match_id, player_id, minute) VALUES
(1, 1, 1, 10),
(2, 1, 4, 20),
(3, 2, 5, 30),
(4, 2, 8, 40),
(5, 3, 7, 50),
(6, 3, 3, 60);

-- Вмъкване на спонсори
INSERT INTO Sponsors (sponsor_id, name, team_id) VALUES
(1, 'Sponsor A', 1),
(2, 'Sponsor B', 2),
(3, 'Sponsor C', 3);

