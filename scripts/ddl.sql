CREATE TABLE IF NOT EXISTS companies (
    company_id int PRIMARY KEY,
    company_name varchar(50),
    foundation_date date,
    key_figure varchar(50)
);

CREATE TABLE IF NOT EXISTS leagues
(
    league_id int PRIMARY KEY,
    league_name varchar(50),
    league_region varchar(50),
    division int,
    in_dpc bool
);

CREATE TABLE IF NOT EXISTS league_sponsors (
    con_league_id int,
        FOREIGN KEY (con_league_id) REFERENCES leagues(league_id),
    con_sponsor_id int,
        FOREIGN KEY (con_sponsor_id) REFERENCES companies(company_id)
);

CREATE TABLE IF NOT EXISTS coaches (
    coach_nickname varchar(50) PRIMARY KEY,
    coach_surname varchar(50),
    coach_firstname varchar(50),
    coach_age int,
    coach_nationality varchar(50),
    coach_prize_money int,
    coach_career_start date,
    coach_valid_from date,
    coach_valid_to date
);

CREATE TABLE IF NOT EXISTS teams (
    team_name varchar(50) PRIMARY KEY,
    team_region varchar(50),
    team_league_id int,
        FOREIGN KEY (team_league_id) REFERENCES leagues(league_id),
    team_coach_nickname varchar(50),
        FOREIGN KEY (team_coach_nickname) REFERENCES coaches(coach_nickname)
);

CREATE TABLE IF NOT EXISTS players (
    player_nickname varchar(50) PRIMARY KEY,
    player_surname varchar(50),
    player_firstname varchar(50),
    player_team_name varchar(50),
        FOREIGN KEY (player_team_name) REFERENCES teams(team_name),
    role varchar(20),
    player_age int,
    player_nationality varchar(50),
    player_prize_money int,
    player_career_start date,
    player_valid_from date,
    player_valid_to date
);

CREATE TABLE IF NOT EXISTS heroes (
    hero_name varchar(50) PRIMARY KEY,
    main_attribute varchar(20),
    melee_range varchar(5) CHECK (melee_range='MELEE' or melee_range='RANGE'),
    strength int,
    agility int,
    intelligence int,
    move_speed int,
    max_base_dmg int,
    min_base_dmg int,
    base_attack_time real
);

CREATE TABLE IF NOT EXISTS matches (
    match_id int PRIMARY KEY,
    match_league_id int,
        FOREIGN KEY (match_league_id) REFERENCES leagues(league_id),
    match_date date,
    rad_team_name varchar(50),
        FOREIGN KEY (rad_team_name) REFERENCES teams(team_name),
    dire_team_name varchar(50),
        FOREIGN KEY (dire_team_name) REFERENCES teams(team_name),
    won varchar(10) CHECK (won='RAD' or won='DIRE'),
    duration int,
    patch varchar(20)
);

CREATE TABLE IF NOT EXISTS match_heroes (
    con_match_id int,
        FOREIGN KEY (con_match_id) REFERENCES matches(match_id),
    con_hero_name varchar(50),
        FOREIGN KEY (con_hero_name) REFERENCES heroes(hero_name),
    side varchar(10) CHECK (side='RAD' or side='DIRE'),
    hero_role varchar(10)
);