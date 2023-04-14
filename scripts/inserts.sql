INSERT INTO companies (company_id, company_name, foundation_date, key_figure)  VALUES
(0, 'Coca-cola', '1892-01-29', 'James Quincy'),
(1, 'Aviasales', '2007-01-01', 'Konstantin Kalinov'),
(2, 'Megafon', '1993-06-17', 'Khachatur Pombukhchan'),
(3, 'Snickers', '1930-01-01', 'Victoria Mars'),
(4, 'Red Bull', '1984-01-01', 'Dietrich Mateschitz'),
(5, 'USM Holdings', '2012-01-01', 'Alisher Usmanov'),
(6, 'StrongBow', '1960-01-01', null);

INSERT INTO leagues(league_id, league_name, league_region, division, in_dpc) VALUES
(0, 'DPC NA 2023 Division II', 'North America', 2, true),
(1, 'DPC WEU 2023 Division I', 'West europe', 1, true),
(2, 'DPC WEU 2023 Division II', 'West europe', 2, true),
(3, 'DPC CHINA 2023 Division I', 'China', 1, true),
(4, 'Mango Tango League', 'CIS', null, false),
(5, 'DPC EEU 2023 Division I', 'East europe', 1, true);

INSERT INTO league_sponsors(con_league_id, con_sponsor_id) VALUES
(4, 1),
(2, 2),
(2, 4),
(1, 3),
(5, 4);

INSERT INTO coaches (coach_nickname, coach_surname, coach_firstname, coach_age, coach_nationality, coach_prize_money, coach_career_start, coach_valid_from, coach_valid_to) VALUES
('xiao8', 'Ning', 'Zhang', 34, 'China', 1884411, '2011-01-01', '2023-01-11', '2023-09-01'),
('Blitz', 'William', 'Lee', 32, 'USA', 26433, '2012-01-01', '2022-09-11', '2023-05-21'),
('Silent', 'Airat', 'Gaziev', 30, 'Russia', 326692, '2012-01-01', '2022-09-01', '2023-09-01'),
('Aui_2000', 'Ling', 'Kurtis', 30, 'Canada', 2008622, '2012-01-01', '2022-09-01', '2023-09-01'),
('Heen', 'Lee', 'Seung Gon', 36, 'South Korea', 81519, '2013-01-01', '2023-02-28', '2023-09-01');

INSERT INTO teams (team_name, team_region, team_league_id, team_coach_nickname) VALUES
('PSG.LGD', 'China', 3, 'xiao8'),
('Team Liquid', 'EU', 1, 'Blitz'),
('Team Spirit', 'CIS', 5, 'Silent'),
('Thundra Esports', 'EU', 1, 'Aui_2000'),
('Team Secret', 'EU', 1, 'Heen');

INSERT INTO players (player_nickname, player_surname, player_firstname, player_team_name, role, player_age, player_nationality, player_prize_money, player_career_start, player_valid_from, player_valid_to) VALUES
('miCKe', 'Wu', 'Mike', 'Team Liquid', 'carry', 23, 'Sweden', 692429, '2016-01-01', '2022-09-01', '2023-07-26'),
('Nisha', 'Yankovsky', 'Mikhail', 'Team Liquid', 'mid', 22, 'Poland', 2317311, '2015-01-01', '2022-09-28', '2023-09-01'),
('zai', 'Wahlberg', 'Ludwig', 'Team Liquid', 'offlane', 25, 'Sweden', 3670206, '2013-01-01', '2022-09-01', '2023-08-05'),
('Boxi', 'Swan', 'Samuel', 'Team Liquid', 'roam', 25, 'Sweden', 699149, '2016-01-01', '2023-04-10', '2023-09-01'),
('iNSaNiA', 'Sarkoi', 'Aiden', 'Team Liquid', 'support', 28, 'Sweden', 701742, '2016-01-01', '2023-09-01', '2023-07-19'),
('Puppey', 'Clement', 'Ivanov', 'Team Secret', 'support', 33, 'Estonia', 4227862, '2011-01-01', '2023-03-06', '2023-09-01');

INSERT INTO heroes (hero_name, main_attribute, melee_range, strength, agility, intelligence, move_speed, max_base_dmg, min_base_dmg, base_attack_time) VALUES
('Axe', 'strength', 'MELEE', 25, 20, 18, 315, 59, 55, 1.7),
('Bane', 'intelligence', 'RANGE', 23, 23, 23, 305, 62, 56, 1.7),
('Centaur Warrunner', 'strength', 'MELEE', 27, 15, 15, 300, 65, 63, 1.7),
('Dazzle', 'intelligence', 'RANGE', 18, 20, 25, 305, 53, 47, 1.7),
('Drow Ranger', 'agility', 'RANGE', 16, 20, 15, 300, 56, 49, 1.7),
('Medusa', 'agility', 'RANGE', 17, 20, 23, 275, 54, 48, 1.7),
('Slark', 'agility', 'MELEE', 20, 21, 16, 300, 61, 55, 1.7),
('Slardar', 'strength', 'MELEE', 21, 17, 15, 300, 59, 51, 1.7),
('Meepo', 'agility', 'MELEE', 24, 17, 20, 330, 52, 46, 1.7),
('Huskar', 'strength', 'MELEE', 20, 10, 18, 295, 46, 41, 1.7);

INSERT INTO matches (match_id, match_league_id, match_date, rad_team_name, dire_team_name, won, duration, patch) VALUES
(0, 1, '2023-04-10', 'Thundra Esports', 'Team Liquid', 'DIRE', 43, '7.32e');

INSERT INTO match_heroes (con_match_id, con_hero_name, side, hero_role) VALUES
(0, 'Axe', 'RAD', 'carry'),
(0, 'Bane', 'RAD', 'mid'),
(0, 'Centaur Warrunner', 'RAD', 'offlane'),
(0, 'Dazzle', 'RAD', 'roam'),
(0, 'Drow Ranger', 'RAD', 'support'),
(0, 'Medusa', 'DIRE', 'carry'),
(0, 'Slark', 'DIRE', 'mid'),
(0, 'Slardar', 'DIRE', 'offlane'),
(0, 'Meepo', 'DIRE', 'roam'),
(0, 'Huskar', 'DIRE', 'support');
