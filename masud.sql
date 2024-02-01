drop table match_summary;
create table match_scorecard
(
match_id varchar not null,
series_id varchar not null,
 varchar not null,
scorecard_id_1 varchar not null;
man_of_the_match varchar not null,
match_date date not null,
match_format varchar not null,
umpire_id_1 varchar not null,
umpire_id_2 varchar not null,


);



drop table series_info;
create table series_info
(
series_id varchar not null,
series_name varchar not null,
{team_name} varchar not null,
start_date varchar not null,
end_date varchar not null,
host_country varchar not null,
man_of_the series varchar not null,
)








drop table cricket_board;
create TABLE cricket_board
(
board_name VARCHAR not NULL, 
board_president VARCHAR not NULL,
team_name VARCHAR not NULL,
located varchar not NULL,
abbreviation varchar not NULL,
image text not null,
CONSTRAINT cricket_board_pk PRIMARY key(board_name)
);


drop table player_info;
create TABLE player_info
(
player_id VARCHAR not NULL,
player_name VARCHAR not NULL,
player_role VARCHAR not NULL,
player_date_of_birth VARCHAR not NULL,
player_batting_style VARCHAR not NULL,
player_bowling_style VARCHAR,
team_name VARCHAR not null,
player_image_path VARCHAR not null,
--player batting stats
  --test
    batting_test_no_of_match int,
    batting_test_no_of_innings INT,
    batting_test_runs INT,
    batting_test_sr DOUBLE PRECISION,
    batting_test_avg DOUBLE PRECISION,
    batting_test_100s INT,
    batting_test_50s INT,
    batting_test_4s INT,
    batting_test_6s INT,
    batting_test_hs INT,
    
    -- Player batting stats - ODI
    batting_odi_no_of_match INT,
    batting_odi_no_of_innings INT,
    batting_odi_runs INT,
    batting_odi_sr DOUBLE PRECISION,
    batting_odi_avg DOUBLE PRECISION,
    batting_odi_100s INT,
    batting_odi_50s INT,
    batting_odi_4s INT,
    batting_odi_6s INT,
    batting_odi_hs INT,
    
    -- Player batting stats - T20
    batting_t20_no_of_match INT,
    batting_t20_no_of_innings INT,
    batting_t20_runs INT,
    batting_t20_sr DOUBLE PRECISION,
    batting_t20_avg DOUBLE PRECISION,
    batting_t20_100s INT,
    batting_t20_50s INT,
    batting_t20_4s INT,
    batting_t20_6s INT,
    batting_t20_hs INT,
    
    -- Player bowling stats - Test
    bowling_test_no_of_match INT,
    bowling_test_no_of_innings INT,
    bowling_test_runs INT,
    bowling_test_wickets INT,
    bowling_test_avg DOUBLE PRECISION,
    bowling_test_economy DOUBLE PRECISION,
    bowling_test_10w INT,
    bowling_test_5w INT,
    
    -- Player bowling stats - ODI
    bowling_odi_no_of_match INT,
    bowling_odi_no_of_innings INT,
    bowling_odi_runs INT,
    bowling_odi_wickets INT,
    bowling_odi_avg DOUBLE PRECISION,
    bowling_odi_economy DOUBLE PRECISION,
    bowling_odi_10w INT,
    bowling_odi_5w INT,
    
    -- Player bowling stats - T20
    bowling_t20_no_of_match INT,
    bowling_t20_no_of_innings INT,
    bowling_t20_runs INT,
    bowling_t20_wickets INT,
    bowling_t20_avg DOUBLE PRECISION,
    bowling_t20_economy DOUBLE PRECISION,
    bowling_t20_10w INT,
    bowling_t20_5w INT,
    CONSTRAINT player_info_pk PRIMARY KEY(player_id)
);


drop table umpire_info;
create TABLE umpire_info
(
umpire_id VARCHAR not NULL,
umpire_name VARCHAR not NULL,
umpire_country VARCHAR not NULL,
umpire_image_path VARCHAR not null,
CONSTRAINT umpire_info_pk PRIMARY key(umpire_id)
);


drop table national_team;
create TABLE national_team
(
    icc_membership VARCHAR not NULL,
    team_name VARCHAR not NULL,
    current_coach VARCHAR not NULL,
    most_runs_test VARCHAR not NULL,
    most_wickets_test VARCHAR not NULL,
    most_runs_odi VARCHAR not NULL,
    most_wickets_odi VARCHAR not NULL,
    most_runs_t20 VARCHAR not NULL,
    most_wickets_t20 VARCHAR not NULL,
    --most_wickets VARCHAR not NULL,
    most_matches_played_against VARCHAR not NULL,
    most_matches_won_against VARCHAR not NULL,
    total_odi_matches_played VARCHAR not NULL,
    total_odi_matches_won VARCHAR not NULL,
    total_t20_matches_played VARCHAR not NULL,
    total_t20_matches_won VARCHAR not NULL,
    total_test_matches_played VARCHAR not NULL,
    total_test_matches_won VARCHAR not NULL,
    icc_t20_ranking VARCHAR not NULL,
    icc_test_ranking VARCHAR not NULL,
    icc_odi_ranking VARCHAR not NULL,
    home_ground VARCHAR not NULL,
    most_100s VARCHAR not NULL,
    most_wickets VARCHAR not NULL,
    --{hall_of_fame} VARCHAR not NULL,
    CONSTRAINT national_team_pk PRIMARY key(team_name)
);

drop table user_info;
create TABLE user_info
(
    user_id VARCHAR not NULL,
    user_name VARCHAR not NULL,
    user_email VARCHAR not NULL,
    user_password VARCHAR not NULL,
    user_image_path VARCHAR not null,
    dream_team_id VARCHAR not null,
    CONSTRAINT user_info_pk PRIMARY key(user_id)
);

