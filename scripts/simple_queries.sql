SELECT p.player_nickname
FROM players as p
WHERE p.player_team_name = 'Team Liquid';

SELECT p.player_nickname
FROM players as p
WHERE p.player_age > 24;

SELECT team_name, team_coach_nickname
FROM teams
WHERE team_region = 'EU';

SELECT con_hero_name
FROM match_heroes
WHERE hero_role = 'carry' or hero_role = 'mid';

SELECT won, count(*) as count
FROM matches
GROUP BY won;

SELECT player_nickname, player_prize_money
FROM players
ORDER BY player_prize_money DESC;

SELECT coach_nationality, avg(coach_prize_money)
FROM coaches
GROUP BY coach_nationality;

SELECT league_name
FROM leagues
WHERE in_dpc;

SELECT hero_name, move_speed
FROM heroes
ORDER BY move_speed DESC;

SELECT main_attribute, avg(move_speed) as avg_ms
FROM heroes
GROUP BY main_attribute
ORDER BY avg_ms DESC;

UPDATE companies
SET key_figure = 'Ilon Musk'
WHERE company_id = 2;

UPDATE leagues
SET league_region = 'EU'
WHERE league_region = 'CIS';

UPDATE league_sponsors
SET con_league_id = 2, con_sponsor_id = 2
WHERE con_league_id = 3;

UPDATE coaches
SET coach_age = coach_age + 1;

UPDATE teams
SET team_coach_nickname = 'xiao8'
WHERE team_name = 'PSG.LGD';

UPDATE players
SET player_prize_money = player_prize_money + 100000
WHERE player_team_name = 'Team Liquid';

UPDATE heroes
SET move_speed = move_speed + 10;

UPDATE matches
SET patch = '7.00'
WHERE match_date = '2023-04-10';

UPDATE heroes
SET strength = 3
WHERE main_attribute = 'strength';

UPDATE heroes
SET agility = agility + 1, strength = strength + 1
WHERE melee_range = 'MELEE';

DELETE FROM match_heroes
WHERE con_hero_name='Axe';

DELETE FROM players
WHERE player_nickname = 'Puppey';

DELETE FROM league_sponsors
WHERE con_sponsor_id = 2;

DELETE FROM companies
WHERE key_figure = 'Ilon Musk';

DELETE FROM league_sponsors
WHERE con_league_id = 0;

DELETE FROM leagues
WHERE league_id = 0;

DELETE FROM players
WHERE player_age > 27;

DELETE FROM match_heroes
WHERE con_match_id = 0;

DELETE FROM heroes
WHERE main_attribute = 'intelligence';

DELETE FROM matches
WHERE rad_team_name = 'Thundra Esports';