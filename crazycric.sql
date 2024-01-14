drop table cricket_board;
create TABLE cricket_board
(
board_name VARCHAR not NULL, 
board_president VARCHAR not NULL,
country_name VARCHAR not NULL,
located varchar not NULL,
abbreviation varchar not NULL,
image text not null,
CONSTRAINT cricket_board_pk PRIMARY key(board_name)
);
insert into cricket_board values('Bangladesh Cricket Board','Najmul Hossain Papon','Bangladesh','Dhaka','BCB','D:\Buet\Crazycric-project\cricketboard_images\bd.png');
insert into cricket_board values('Board of Control for Cricket in India','Rojer Binny','India','Mumbai','BCCI','D:\Buet\Crazycric-project\cricketboard_images\ind.png');
insert into cricket_board values('England and Wales Cricket Board','Richard Thompson','England','London','ECB','D:\Buet\Crazycric-project\cricketboard_images\eng.png');
insert into cricket_board values('Cricket Australia','Mike Baird','Australia','Melbourne','CA','D:\Buet\Crazycric-project\cricketboard_images\aus.png');
insert into cricket_board values('Cricket South Africa','Rihan Richards','South Africa','	Johannesburg','CSA','D:\Buet\Crazycric-project\cricketboard_images\sa.png');
insert into cricket_board values('Cricket West Indies','Dr. Kishore Shallow','West Indies','Antigua and Barbuda','CWI','D:\Buet\Crazycric-project\cricketboard_images\wi.png');
insert into cricket_board values('New Zealand Cricket','Debbie Hockley','New Zealand','	Christchurch','NZC','D:\Buet\Crazycric-project\cricketboard_images\nz.png');
insert into cricket_board values(' Pakistan Cricket Board','Zaka Ashraf','Pakistan',' Ferozepur','PCB','D:\Buet\Crazycric-project\cricketboard_images\pak.png');
insert into cricket_board values('Afghanistan Cricket Board','	Mirwais Ashraf','Afghanistan','Kabul','ACB','D:\Buet\Crazycric-project\cricketboard_images\afg.png');
insert into cricket_board values('Srilanka Cricket Board','Shammi Silva','Srilanka','Colombo','SLC','D:\Buet\Crazycric-project\cricketboard_images\sl.png');
drop table Users;
create TABLE Users
(
userid VARCHAR not NULL, 
userpassword VARCHAR not NULL,
username VARCHAR not NULL,
countryname VARCHAR not NULL,
favteam varchar not NULL,
favplayer varchar not NULL,
image text,
CONSTRAINT user_pk PRIMARY key(userid)
);
select*
from Users;

drop table match_scorecard;
create TABLE match_scorecard
(
match_id VARCHAR not NULL,
toss VARCHAR not NULL,
team1 VARCHAR not NULL,
team2 VARCHAR not NULL,
team1_score VARCHAR not NULL,
team2_score VARCHAR not NULL,
team1_wicket VARCHAR not NULL,
team2_wicket VARCHAR not NULL,
team1_over VARCHAR not NULL,
team2_over VARCHAR not NULL,
team1_runrate VARCHAR not NULL,
team2_runrate VARCHAR not NULL,
team1_overs VARCHAR not NULL,
team2_overs VARCHAR not NULL,
team1_batting VARCHAR not NULL,
team2_batting VARCHAR not NULL,
team1_bowling VARCHAR not NULL,
team2_bowling VARCHAR not NULL,
team1_given_extra VARCHAR not NULL,
team2_given_extra VARCHAR not NULL,
--team1 batsman info
team1_batsman1_runs VARCHAR not NULL,team1_batsman1_balls VARCHAR not NULL,team1_batsman1_fours VARCHAR not NULL,team1_batsman1_sixes VARCHAR not NULL,team1_batsman1_sr VARCHAR not NULL,team1_batsman1_out VARCHAR not NULL,team1_batsman1_name VARCHAR not NULL,
team1_batsman2_runs VARCHAR not NULL,team1_batsman2_balls VARCHAR not NULL,team1_batsman2_fours VARCHAR not NULL,team1_batsman2_sixes VARCHAR not NULL,team1_batsman2_sr VARCHAR not NULL,team1_batsman2_out VARCHAR not NULL,team1_batsman2_name VARCHAR not NULL,
team1_batsman3_runs VARCHAR not NULL,team1_batsman3_balls VARCHAR not NULL,team1_batsman3_fours VARCHAR not NULL,team1_batsman3_sixes VARCHAR not NULL,team1_batsman3_sr VARCHAR not NULL,team1_batsman3_out VARCHAR not NULL,team1_batsman3_name VARCHAR not NULL,
team1_batsman4_runs VARCHAR not NULL,team1_batsman4_balls VARCHAR not NULL,team1_batsman4_fours VARCHAR not NULL,team1_batsman4_sixes VARCHAR not NULL,team1_batsman4_sr VARCHAR not NULL,team1_batsman4_out VARCHAR not NULL,team1_batsman4_name VARCHAR not NULL,
team1_batsman5_runs VARCHAR not NULL,team1_batsman5_balls VARCHAR not NULL,team1_batsman5_fours VARCHAR not NULL,team1_batsman5_sixes VARCHAR not NULL,team1_batsman5_sr VARCHAR not NULL,team1_batsman5_out VARCHAR not NULL,team1_batsman5_name VARCHAR not NULL,
team1_batsman6_runs VARCHAR not NULL,team1_batsman6_balls VARCHAR not NULL,team1_batsman6_fours VARCHAR not NULL,team1_batsman6_sixes VARCHAR not NULL,team1_batsman6_sr VARCHAR not NULL,team1_batsman6_out VARCHAR not NULL,team1_batsman6_name VARCHAR not NULL,
team1_batsman7_runs VARCHAR not NULL,team1_batsman7_balls VARCHAR not NULL,team1_batsman7_fours VARCHAR not NULL,team1_batsman7_sixes VARCHAR not NULL,team1_batsman7_sr VARCHAR not NULL,team1_batsman7_out VARCHAR not NULL,team1_batsman7_name VARCHAR not NULL,
team1_batsman8_runs VARCHAR not NULL,team1_batsman8_balls VARCHAR not NULL,team1_batsman8_fours VARCHAR not NULL,team1_batsman8_sixes VARCHAR not NULL,team1_batsman8_sr VARCHAR not NULL,team1_batsman8_out VARCHAR not NULL,team1_batsman8_name VARCHAR not NULL,
team1_batsman9_runs VARCHAR not NULL,team1_batsman9_balls VARCHAR not NULL,team1_batsman9_fours VARCHAR not NULL,team1_batsman9_sixes VARCHAR not NULL,team1_batsman9_sr VARCHAR not NULL,team1_batsman9_out VARCHAR not NULL,team1_batsman9_name VARCHAR not NULL,
team1_batsman10_runs VARCHAR not NULL,team1_batsman10_balls VARCHAR not NULL,team1_batsman10_fours VARCHAR not NULL,team1_batsman10_sixes VARCHAR not NULL,team1_batsman10_sr VARCHAR not NULL,team1_batsman10_out VARCHAR not NULL,team1_batsman10_name VARCHAR not NULL,
team1_batsman11_runs VARCHAR not NULL,team1_batsman11_balls VARCHAR not NULL,team1_batsman11_fours VARCHAR not NULL,team1_batsman11_sixes VARCHAR not NULL,team1_batsman11_sr VARCHAR not NULL,team1_batsman11_out VARCHAR not NULL,team1_batsman11_name VARCHAR not NULL,
--team2 batsman info
team2_batsman1_runs VARCHAR not NULL,team2_batsman1_balls VARCHAR not NULL,team2_batsman1_fours VARCHAR not NULL,team2_batsman1_sixes VARCHAR not NULL,team2_batsman1_sr VARCHAR not NULL,team2_batsman1_out VARCHAR not NULL,team2_batsman1_name VARCHAR not NULL,
team2_batsman2_runs VARCHAR not NULL,team2_batsman2_balls VARCHAR not NULL,team2_batsman2_fours VARCHAR not NULL,team2_batsman2_sixes VARCHAR not NULL,team2_batsman2_sr VARCHAR not NULL,team2_batsman2_out VARCHAR not NULL,team2_batsman2_name VARCHAR not NULL,
team2_batsman3_runs VARCHAR not NULL,team2_batsman3_balls VARCHAR not NULL,team2_batsman3_fours VARCHAR not NULL,team2_batsman3_sixes VARCHAR not NULL,team2_batsman3_sr VARCHAR not NULL,team2 _batsman3_out VARCHAR not NULL,team2_batsman3_name VARCHAR not NULL,
team2_batsman4_runs VARCHAR not NULL,team2_batsman4_balls VARCHAR not NULL,team2_batsman4_fours VARCHAR not NULL,team2_batsman4_sixes VARCHAR not NULL,team2_batsman4_sr VARCHAR not NULL,team2_batsman4_out VARCHAR not NULL,team2_batsman4_name VARCHAR not NULL,
team2_batsman5_runs VARCHAR not NULL,team2_batsman5_balls VARCHAR not NULL,team2_batsman5_fours VARCHAR not NULL,team2_batsman5_sixes VARCHAR not NULL,team2_batsman5_sr VARCHAR not NULL,team2_batsman5_out VARCHAR not NULL,team2_batsman5_name VARCHAR not NULL,
team2_batsman6_runs VARCHAR not NULL,team2_batsman6_balls VARCHAR not NULL,team2_batsman6_fours VARCHAR not NULL,team2_batsman6_sixes VARCHAR not NULL,team2_batsman6_sr VARCHAR not NULL,team2_batsman6_out VARCHAR not NULL,team2_batsman6_name VARCHAR not NULL,
team2_batsman7_runs VARCHAR not NULL,team2_batsman7_balls VARCHAR not NULL,team2_batsman7_fours VARCHAR not NULL,team2_batsman7_sixes VARCHAR not NULL,team2_batsman7_sr VARCHAR not NULL,team2_batsman7_out VARCHAR not NULL,team2_batsman7_name VARCHAR not NULL,
team2_batsman8_runs VARCHAR not NULL,team2_batsman8_balls VARCHAR not NULL,team2_batsman8_fours VARCHAR not NULL,team2_batsman8_sixes VARCHAR not NULL,team2_batsman8_sr VARCHAR not NULL,team2_batsman8_out VARCHAR not NULL,team2_batsman8_name VARCHAR not NULL,
team2_batsman9_runs VARCHAR not NULL,team2_batsman9_balls VARCHAR not NULL,team2_batsman9_fours VARCHAR not NULL,team2_batsman9_sixes VARCHAR not NULL,team2_batsman9_sr VARCHAR not NULL,team2_batsman9_out VARCHAR not NULL,team2_batsman9_name VARCHAR not NULL,
team2_batsman10_runs VARCHAR not NULL,team2_batsman10_balls VARCHAR not NULL,team2_batsman10_fours VARCHAR not NULL,team2_batsman10_sixes VARCHAR not NULL,team2_batsman10_sr VARCHAR not NULL,team2_batsman10_out VARCHAR not NULL,team2_batsman10_name VARCHAR not NULL,
team2_batsman11_runs VARCHAR not NULL,team2_batsman11_balls VARCHAR not NULL,team2_batsman11_fours VARCHAR not NULL,team2_batsman11_sixes VARCHAR not NULL,team2_batsman11_sr VARCHAR not NULL,team2_batsman11_out VARCHAR not NULL,team2_batsman11_name VARCHAR not NULL,
--team1 bowler info
team1_bowler1_runs VARCHAR not NULL,team1_bowler1_balls VARCHAR not NULL,team1_bowler1_wickets VARCHAR not NULL,team1_bowler1_economy VARCHAR not NULL,team1_bowler1_sr VARCHAR not NULL,team1_bowler1_name VARCHAR not NULL,
team1_bowler2_runs VARCHAR not NULL,team1_bowler2_balls VARCHAR not NULL,team1_bowler2_wickets VARCHAR not NULL,team1_bowler2_economy VARCHAR not NULL,team1_bowler2_sr VARCHAR not NULL,team1_bowler2_name VARCHAR not NULL,
team1_bowler3_runs VARCHAR not NULL,team1_bowler3_balls VARCHAR not NULL,team1_bowler3_wickets VARCHAR not NULL,team1_bowler3_economy VARCHAR not NULL,team1_bowler3_sr VARCHAR not NULL,team1_bowler3_name VARCHAR not NULL,
team1_bowler4_runs VARCHAR not NULL,team1_bowler4_balls VARCHAR not NULL,team1_bowler4_wickets VARCHAR not NULL,team1_bowler4_economy VARCHAR not NULL,team1_bowler4_sr VARCHAR not NULL,team1_bowler4_name VARCHAR not NULL,
team1_bowler5_runs VARCHAR not NULL,team1_bowler5_balls VARCHAR not NULL,team1_bowler5_wickets VARCHAR not NULL,team1_bowler5_economy VARCHAR not NULL,team1_bowler5_sr VARCHAR not NULL,team1_bowler5_name VARCHAR not NULL,
team1_bowler6_runs VARCHAR not NULL,team1_bowler6_balls VARCHAR not NULL,team1_bowler6_wickets VARCHAR not NULL,team1_bowler6_economy VARCHAR not NULL,team1_bowler6_sr VARCHAR not NULL,team1_bowler6_name VARCHAR not NULL,
team1_bowler7_runs VARCHAR not NULL,team1_bowler7_balls VARCHAR not NULL,team1_bowler7_wickets VARCHAR not NULL,team1_bowler7_economy VARCHAR not NULL,team1_bowler7_sr VARCHAR not NULL,team1_bowler7_name VARCHAR not NULL,
team1_bowler8_runs VARCHAR not NULL,team1_bowler8_balls VARCHAR not NULL,team1_bowler8_wickets VARCHAR not NULL,team1_bowler8_economy VARCHAR not NULL,team1_bowler8_sr VARCHAR not NULL,team1_bowler8_name VARCHAR not NULL,
--team2 bowler info
team2_bowler1_runs VARCHAR not NULL,team2_bowler1_balls VARCHAR not NULL,team2_bowler1_wickets VARCHAR not NULL,team2_bowler1_economy VARCHAR not NULL,team2_bowler1_sr VARCHAR not NULL,team2_bowler1_name VARCHAR not NULL,
team2_bowler2_runs VARCHAR not NULL,team2_bowler2_balls VARCHAR not NULL,team2_bowler2_wickets VARCHAR not NULL,team2_bowler2_economy VARCHAR not NULL,team2_bowler2_sr VARCHAR not NULL,team2_bowler1_name VARCHAR not NULL,
team2_bowler3_runs VARCHAR not NULL,team2_bowler3_balls VARCHAR not NULL,team2_bowler3_wickets VARCHAR not NULL,team2_bowler3_economy VARCHAR not NULL,team2_bowler3_sr VARCHAR not NULL,team2_bowler1_name VARCHAR not NULL,
team2_bowler4_runs VARCHAR not NULL,team2_bowler4_balls VARCHAR not NULL,team2_bowler4_wickets VARCHAR not NULL,team2_bowler4_economy VARCHAR not NULL,team2_bowler4_sr VARCHAR not NULL,team2_bowler1_name VARCHAR not NULL,
team2_bowler5_runs VARCHAR not NULL,team2_bowler5_balls VARCHAR not NULL,team2_bowler5_wickets VARCHAR not NULL,team2_bowler5_economy VARCHAR not NULL,team2_bowler5_sr VARCHAR not NULL,team2_bowler1_name VARCHAR not NULL,
team2_bowler6_runs VARCHAR not NULL,team2_bowler6_balls VARCHAR not NULL,team2_bowler6_wickets VARCHAR not NULL,team2_bowler6_economy VARCHAR not NULL,team2_bowler6_sr VARCHAR not NULL,team2_bowler1_name VARCHAR not NULL,
team2_bowler7_runs VARCHAR not NULL,team2_bowler7_balls VARCHAR not NULL,team2_bowler7_wickets VARCHAR not NULL,team2_bowler7_economy VARCHAR not NULL,team2_bowler7_sr VARCHAR not NULL,team2_bowler1_name VARCHAR not NULL,
team2_bowler8_runs VARCHAR not NULL,team2_bowler8_balls VARCHAR not NULL,team2_bowler8_wickets VARCHAR not NULL,team2_bowler8_economy VARCHAR not NULL,team2_bowler8_sr VARCHAR not NULL,team2_bowler1_name VARCHAR not NULL,
CONSTRAINT match_scorecard_pk PRIMARY key(match_id)
);

drop table player_info;
create TABLE player_info
(
player_id VARCHAR not NULL,
player_name VARCHAR not NULL,
player_role VARCHAR not NULL,
player_date_of_birth VARCHAR not NULL,
player_batting_style VARCHAR not NULL,
player_bowling_style VARCHAR not NULL,
player_image_path VARCHAR not null,
--player batting stats
    format VARCHAR NOT NULL, -- Test, ODI, T20
    batting_match INT NOT NULL,
    batting_innings INT NOT NULL,
    batting_runs INT NOT NULL,
    batting_sr INT NOT NULL,
    batting_avg INT NOT NULL,
    batting_100s INT NOT NULL,
    batting_50s INT NOT NULL,
    batting_4s INT NOT NULL,
    batting_6s INT NOT NULL,
--player bowling stats
    format VARCHAR NOT NULL, -- Test, ODI, T20
    bowling_match INT NOT NULL,
    bowling_innings INT NOT NULL,
    bowling_runs INT NOT NULL,
    bowling_wickets INT NOT NULL,
    bowling_avg INT NOT NULL,
    bowling_economy INT NOT NULL,
    bowling_sr INT NOT NULL,
    bowling_10w INT NOT NULL,
    bowling_5w INT NOT NULL,


CONSTRAINT player_info_pk PRIMARY key(player_id)
);
drop table match_info;
create TABLE match_info
(
match_id VARCHAR not NULL,
match_type VARCHAR not NULL,
match_date VARCHAR not NULL,
match_time VARCHAR not NULL,
match_venue VARCHAR not NULL,
match_team1 VARCHAR not NULL,
match_team2 VARCHAR not NULL,
match_toss VARCHAR not NULL,
--match_status VARCHAR not NULL,
match_result VARCHAR not NULL,
match_winner VARCHAR not NULL,
man_of_the_match VARCHAR not NULL,
team1_score VARCHAR not NULL,
team2_score VARCHAR not NULL,
team1_wicket VARCHAR not NULL,
team2_wicket VARCHAR not NULL,
team1_over VARCHAR not NULL,
team2_over VARCHAR not NULL,
team1_runrate VARCHAR not NULL,
team2_runrate VARCHAR not NULL,
--team 1
team1_best_batsman1_runs VARCHAR not NULL,
team1_best_batsman1_balls VARCHAR not NULL,
team1_best_batsman2_runs VARCHAR not NULL,
team1_best_batsman2_balls VARCHAR not NULL,
team1_best_batsman2_runs VARCHAR not NULL,
team1_best_batsman2_balls VARCHAR not NULL,
team1_best_batsman3_runs VARCHAR not NULL,
team1_best_batsman3_balls VARCHAR not NULL,
team1_best_bowler1_runs VARCHAR not NULL,
team1_best_bowler1_wickets VARCHAR not NULL,
team1_best_bowler2_runs VARCHAR not NULL,
team1_best_bowler2_wickets VARCHAR not NULL,
team1_best_bowler3_runs VARCHAR not NULL,
team1_best_bowler3_wickets VARCHAR not NULL,
--team 2
team2_best_batsman1_runs VARCHAR not NULL,
team2_best_batsman1_balls VARCHAR not NULL,
team2_best_batsman2_runs VARCHAR not NULL,
team2_best_batsman2_balls VARCHAR not NULL,
team2_best_batsman3_runs VARCHAR not NULL,
team2_best_batsman3_balls VARCHAR not NULL,
team2_best_bowler1_runs VARCHAR not NULL,
team2_best_bowler1_wickets VARCHAR not NULL,
team2_best_bowler2_runs VARCHAR not NULL,
team2_best_bowler2_wickets VARCHAR not NULL,
team2_best_bowler3_runs VARCHAR not NULL,
team2_best_bowler3_wickets VARCHAR not NULL,
CONSTRAINT match_info_pk PRIMARY key(match_id)
);

drop table series_info;
create TABLE series_info
(
series_id VARCHAR not NULL,
series_name VARCHAR not NULL,
series_type VARCHAR not NULL,
series_start_date VARCHAR not NULL,
series_winner VARCHAR not NULL,
series_runnerup VARCHAR not NULL,
man_of_the_series VARCHAR not NULL,
CONSTRAINT series_info_pk PRIMARY key(series_id)
);
drop table Performances;
CREATE TABLE Performances (
    
    Match_id INT REFERENCES Matches(Match_id),
    Player_id INT REFERENCES Players(Player_id),
    Overs_bowled INT,
    Wickets_taken INT,
    Runs_given INT,
    Runs_scored INT,
    Balls_faced INT,
    Extras_given INT,
    Maiden_overs INT,
    Sixes_hit INT,
    Fours_hit INT,
    PRIMARY KEY (match_id,player_id)
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
    most_runs VARCHAR not NULL,
    most_wickets VARCHAR not NULL,
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
    {hall_of_fame} VARCHAR not NULL,
    CONSTRAINT national_team_pk PRIMARY key(icc_membership)
);
















