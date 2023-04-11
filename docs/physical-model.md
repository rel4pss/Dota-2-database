# Dota2

## Coach

| Название | Описание | Тип данных |
| --- | --- | --- |
| coach_nickname | никнейм | VARCHAR(50) |
| coach_surname | фамилия | VARCHAR(50) |
| coach_firstname | имя | VARCHAR(50) |
| coach_age | возраст | INTEGER |
| coach_nationality | национальность | VARCHAR(50) |
| coach_prize_money | призовые(USD) | INTEGER |
| coach_career_start | дата начала карьеры | TIMSTAMP |
| coach_valid_from | дата начала актуальности | TIMESTAMP |
| coach_valid_to | дата конца актуальности | TIMESTAMP |

## Team

| Название | Описание | Тип данных |
| --- | --- | --- |
| team_name | название | VARCHAR(50) |
| region | регион | VARCHAR(50) |
| league_id | идентификатор лиги | INTEGER |
| team_coach_nickname | тренер | VARCHAR |

## League

| Название          | Описание      | Тип данных  |
|-------------------|---------------|-------------|
| league_id         | идентификатор | INTEGER     |
| league_name       | название      | VARCHAR(50) |
| region            | регион        | VARCHAR(50) |
| division          | дивизион      | INTEGER     |
| in_dpc            | часть DPC     | BOOL        |

## Player

| Название | Описание | Тип данных |
| --- | --- | --- |
| player_nickname | никнейм | VARCHAR(50) |
| player_surname | фамилия | VARCHAR(50) |
| player_firstname | имя | VARCHAR(50) |
| player_team_name | идентификатор команды | INTEGER |
| player_role | название роли | VARCHAR(20) |
| player_age | возраст | INTEGER |
| player_nationality | национальность | VARCHAR(50) |
| player_prize_money | призовые(USD) | INTEGER |
| player_career_start | дата начала карьеры | TIMSTAMP |
| player_valid_from | дата начала актуальности | TIMESTAMP |
| player_valid_to | дата конца актуальности | TIMESTAMP |

## Hero

| Название         | Описание | Тип данных             |
|------------------| --- |------------------------|
| hero_name        | название | VARCHAR(50)            |
| main_attribute   | основной аттрибут | VARCHAR(20)            |
| mele_range       | ренж или нет | VARCHAR(10) MELE/RANGE |
| strength         | сила | INTEGER                |
| agility          | ловкость | INTEGER                |
| intelligence     | интеллект | INTEGER                |
| moovespeed       | мувспид | INTEGER                |
| max_base_dmg     | верхнее значение крона | INTEGER                |
| min_base_dmg     | нижнее значение урона | INTEGER                |
| base_attack_time | базовое время атаки | REAL                   |

## Match

| Название   | Описание | Тип данных           |
|------------| --- |----------------------|
| match_id   | идентификатор | INTEGER              |
| league_id  | лига | INTEGER              |
| match_date | дата | TIMESTAMP            |
| rad_team_name | идентификатор команды за свет | VARCHAR(50)          |
| dire_team_name | идентификатор команды за тьму | VARCHAR(50)                |
| won        | победил | VARCHAR(10) RAD/DIRE |
| duration   | длительность(MIN) | INTEGER              |
| patch      | патч | VARCHAR(20)          |

## Company

| Название        | Описание        | Тип данных |
|-----------------|-----------------| --- |
| company_id      | идентификатор   | INTEGER |
| company_name    | название        | VARCHAR(50) |
| foundation_date | дата            | TIMESTAMP |
| key_figure      | ключевая фигура | VARCHAR(50) |

## League_Sponsor

| Название       | Описание | Тип данных |
|----------------| --- | --- |
| con_leasgue_id | идентификатор лиги | INTEGER |
| con_sponsor_id | идентификатор спонсора | INTEGER |

## Match_Hero

| Название | Описание | Тип данных |
| --- | --- | --- |
| con_match_id | идентификатор матча | INTEGER |
| con_hero_name | название героя | VARCHAR(50) |