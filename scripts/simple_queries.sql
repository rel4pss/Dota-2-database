SELECT
    p.player_nickname
FROM
    players as p
WHERE
    p.player_team_name = 'Team Liquid';

UPDATE league_sponsors
SET con_league_id = 2, con_sponsor_id = 2
WHERE con_league_id = 3;

DELETE FROM match_heroes
WHERE con_hero_name='Axe';