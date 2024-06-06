CREATE VIEW TopScorers AS
SELECT Players.name, COUNT(Goals.goal_id) AS goals
FROM Players
JOIN Goals ON Players.player_id = Goals.player_id
GROUP BY Players.name
ORDER BY goals DESC;

CREATE VIEW TeamMatches AS
SELECT Matches.match_id, Teams.name AS team, Matches.date, Matches.stadium
FROM Matches
JOIN Teams ON Teams.team_id = Matches.home_team_id OR Teams.team_id = Matches.away_team_id;

CREATE VIEW TeamSponsors AS
SELECT Teams.name AS team, Sponsors.name AS sponsor
FROM Teams
JOIN Sponsors ON Teams.team_id = Sponsors.team_id;
