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
    CONSTRAINT national_team_pk PRIMARY key(icc_membership)
);



insert into national_team values
('Full Member','Bangladesh','Chandrika haturashingha','Mushfiqur Rahim','Shakib Al Hasan','Tamim Iqbal','Shakib Al Hasan','Tamim Iqbal','Shakib Al Hasan','India','Zimbabwe','419','173','125','44','9','140','19','9','9','8','Sher-e-bangla National Cricket stadium','Tamim Iqbal','Shakib Al Hasan'),
('Full Member', 'India', 'Ravi Shastri', 'Sachin Tendulkar', 'Anil Kumble', 'Virat Kohli', 'Jasprit Bumrah', 'Virat Kohli', 'Jasprit Bumrah', 'Ravi Shastri', 'Pakistan', '985', '544', '834', '523', '120', '550', '150', '560', '360', '1', 'Wankhede Stadium', 'Sachin Tendulkar', 'Anil Kumble'),
('Full Member', 'England', 'Chris Silverwood', 'Alastair Cook', 'James Anderson', 'Eoin Morgan', 'James Anderson', 'Eoin Morgan', 'Chris Jordan', 'Stuart Broad', 'Australia', '1000', '600', '900', '480', '130', '650', '200', '670', '430', '2', 'Lord Cricket Ground', 'Alastair Cook', 'James Anderson'),
('Full Member', 'West Indies', 'Phil Simmons', 'Brian Lara', 'Courtney Walsh', 'Chris Gayle', 'Courtney Walsh', 'Chris Gayle', 'Samuel Badree', 'Courtney Walsh', 'England', '850', '500', '750', '420', '110', '600', '180', '620', '390', '3', 'Kensington Oval', 'Brian Lara', 'Courtney Walsh'),
('Full Member', 'Pakistan', 'Misbah-ul-Haq', 'Younis Khan', 'Wasim Akram', 'Babar Azam', 'Wasim Akram', 'Shoaib Malik', 'Shoaib Malik', 'Shoaib Malik', 'India', '920', '510', '880', '480', '140', '700', '160', '720', '410', '4', 'Gaddafi Stadium', 'Younis Khan', 'Wasim Akram'),
('Associate Member', 'Afghanistan', 'Lance Klusener', 'Rahmat Shah', 'Rashid Khan', 'Mohammad Nabi', 'Rashid Khan', 'Mohammad Nabi', 'Hazratullah Zazai', 'Rashid Khan', 'Zimbabwe', '380', '220', '340', '190', '70', '250', '50', '270', '150', '8', 'Bharat Ratna Shri Atal Bihari Vajpayee Ekana Cricket Stadium', 'Rahmat Shah', 'Rashid Khan'),
('Full Member', 'New Zealand', 'Gary Stead', 'Kane Williamson', 'Richard Hadlee', 'Kane Williamson', 'Daniel Vettori', 'Martin Guptill', 'Colin Munro', 'Daniel Vettori', 'Australia', '880', '470', '820', '450', '130', '590', '140', '610', '380', '5', 'Seddon Park', 'Kane Williamson', 'Daniel Vettori'),
('Full Member', 'Australia', 'Justin Langer', 'Ricky Ponting', 'Shane Warne', 'Aaron Finch', 'Glenn Maxwell', 'Aaron Finch', 'Glenn Maxwell', 'Adam Zampa', 'England', '920', '530', '870', '480', '140', '680', '170', '700', '410', '6', 'Melbourne Cricket Ground', 'Ricky Ponting', 'Shane Warne'),
('Full Member', 'South Africa', 'Mark Boucher', 'Jacques Kallis', 'Shaun Pollock', 'Quinton de Kock', 'Makhaya Ntini', 'Quinton de Kock', 'David Miller', 'Imran Tahir', 'Australia', '890', '490', '850', '460', '130', '610', '160', '630', '380', '7', 'Newlands, Cape Town', 'Jacques Kallis', 'Shaun Pollock'),
('Associate Member', 'Zimbabwe', 'Lalchand Rajput', 'Brendan Taylor', 'Heath Streak', 'Hamilton Masakadza', 'Heath Streak', 'Brendan Taylor', 'Sikandar Raza', 'Heath Streak', 'Pakistan', '430', '230', '390', '200', '60', '280', '30', '300', '160', '9', 'Harare Sports Club', 'Brendan Taylor', 'Heath Streak'),
('Full Member', 'Sri Lanka', 'Mickey Arthur', 'Kumar Sangakkara', 'Muttiah Muralitharan', 'Sanath Jayasuriya', 'Muttiah Muralitharan', 'Tillakaratne Dilshan', 'Tillakaratne Dilshan', 'Lasith Malinga', 'India', '890', '480', '860', '440', '140', '640', '170', '660', '380', '9', 'R. Premadasa Stadium', 'Kumar Sangakkara', 'Muttiah Muralitharan');


insert into player_info values
--bangladesh
('BA001','Tamim Iqbal','Batsman','20 March 1989','Left Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\tamim.jpg','Test','62','122','4164','39.62','40.94','9','23','4','ODI','207','205','7371','36.92','78.31','13','47','44','T20I','78','78','2175','29.00','122.03','0','14','18'),
('BA002','Shakib Al Hasan','All-rounder','24 March 1987','Left Handed','Slow left-arm orthodox','D:\Buet\Crazycric-project\player_images\shakib.jpg','Test','56','101','3862','39.40','59.57','5','24','1','ODI','206','200','6323','38.84','81.13','9','47','47','T20I','76','74','1567','22.38','121.08','0','7','13'),
('BA003','Mushfiqur Rahim','Wicket-keeper batsman','9 June 1987','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\mushfiq.jpg','Test','73','133','4413','35.81','52.94','7','23','1','ODI','218','206','6323','38.84','81.13','9','47','47','T20I','87','84','1567','22.38','121.08','0','7','13'),
('BA004','Mahmudullah','All-rounder','4 February 1986','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\mahmudullah.jpg','Test','49','87','2763','33.00','51.00','4','16','1','ODI','188','171','4070','33.00','50.00','6','22','22','T20I','93','84','1567','22.38','121.08','0','7','13'),
('BA005','Mominul Haque','Batsman','29 September 1991','Left Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\mominul.jpg','Test','39','72','3017','40.22','50.00','8','19','1','ODI','39','39','1178','30.20','50.00','1','8','8','T20I','22','22','1567','22.38','121.08','0','7','13'),
('BA006','Mehidy Hasan Miraz','All-rounder','25 October 1997','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\mehidy.jpg','Test','25','46','1059','24.07','50.00','0','4','0','ODI','38','38','1178','30.20','50.00','1','8','8','T20I','22','22','1567','22.38','121.08','0','7','13'),
('BA007','Mustafizur Rahman','Bowler','6 September 1995','Left Handed','Left-arm fast-medium','D:\Buet\Crazycric-project\player_images\mustafiz.jpg','Test','13','24','24.07','50.00','0','4','0','ODI','58','58','1178','30.20','50.00','1','8','8','T20I','43','43','1567','22.38','121.08','0','7','13'),
('BA008','Mashrafe Mortaza','Bowler','5 October 1983','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\mashrafe.jpg','Test','36','63','24.07','50.00','0','4','0','ODI','220','220','1178','30.20','50.00','1','8','8','T20I','54','54','1567','22.38','121.08','0','7','13'),
('BA009','Liton Das','Wicket-keeper batsman','13 October 1994','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\liton.jpg','Test','13','24','24.07','50.00','0','4','0','ODI','38','38','1178','30.20','50.00','1','8','8','T20I','22','22','1567','22.38','121.08','0','7','13'),
('BA010','Soumya Sarkar','All-rounder','25 February 1993','Left Handed','Right-arm medium-fast','D:\Buet\Crazycric-project\player_images\soumya.jpg','Test','15','28','24.07','50.00','0','4','0','ODI','55','55','1178','30.20','50.00','1','8','8','T20I','49','49','1567','22.38','121.08','0','7','13'),
('BA011','Taskin Ahmed','Bowler','3 April 1995','Right Handed','Right-arm fast','D:\Buet\Crazycric-project\player_images\taskin.jpg','Test','9','17','24.07','50.00','0','4','0','ODI','36','36','1178','30.20','50.00','1','8','8','T20I','28','28','1567','22.38','121.08','0','7','13'),
('BA012','Rubel Hossain','Bowler','1 January 1990','Right Handed','Right-arm fast','D:\Buet\Crazycric-project\player_images\rubel.jpg','Test','26','48','24.07','50.00','0','4','0','ODI','95','95','1178','30.20','50.00','1','8','8','T20I','26','26','1567','22.38','121.08','0','7','13'),


--india
('IN001','Virat Kohli','Batsman','5 November 1988','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\kohli.jpg','Test','92','159','7240','53.62','59.31','27','22','0','ODI','254','245','12169','59.07','93.17','43','62','111','T20I','89','84','3159','52.65','138.43','0','26','24'),
('IN002','Rohit Sharma','Batsman','30 April 1987','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\rohit.jpg','Test','32','57','2141','46.54','58.18','6','10','0','ODI','224','217','9115','49.27','88.92','29','43','244','T20I','108','100','2773','32.62','138.78','4','21','127'),
('IN003','Jasprit Bumrah','Bowler','6 December 1993','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\bumrah.jpg','Test','14','27','24.07','50.00','0','4','0','ODI','67','67','1178','30.20','50.00','1','8','8','T20I','50','50','1567','22.38','121.08','0','7','13'),
('IN004','Ravindra Jadeja','All-rounder','6 December 1988','Left Handed','Slow left-arm orthodox','D:\Buet\Crazycric-project\player_images\jadeja.jpg','Test','49','85','1954','35.53','54.31','1','11','0','ODI','168','156','2296','31.89','85.96','0','12','67','T20I','50','50','1567','22.38','121.08','0','7','13'),
('IN005','Rishabh Pant','Wicket-keeper batsman','4 October 1997','Left Handed','Right-arm medium','D:\Buet\crazycric-project\player_images\pant.jpg','Test','13','24','24.07','50.00','0','4','0','ODI','13','13','1178','30.20','50.00','1','8','8','T20I','22','22','1567','22.38','121.08','0','7','13'),
('IN006','Ravichandran Ashwin','All-rounder','17 September 1986','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\ashwin.jpg','Test','71','134','2389','28.10','62.00','5','11','0','ODI','111','101','1464','25.26','87.05','0','10','150','T20I','46','46','1567','22.38','121.08','0','7','13'),
('IN007','Shikhar Dhawan','Batsman','5 December 1985','Left Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\dhawan.jpg','Test','34','58','2315','40.61','59.31','7','5','0','ODI','142','139','5977','44.62','93.17','17','32','32','T20I','61','60','1588','27.52','138.43','0','11','11'),
('IN008','Hardik Pandya','All-rounder','11 October 1993','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\pandya.jpg','Test','11','18','532','31.29','58.18','1','4','0','ODI','54','45','957','29.91','88.92','0','4','45','T20I','48','38','296','12.33','138.78','0','1','38'),
('IN009','KL Rahul','Batsman','18 April 1992','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\rahul.jpg','Test','36','61','2006','34.58','59.31','5','11','0','ODI','38','38','1178','30.20','50.00','1','8','8','T20I','22','22','1567','22.38','121.08','0','7','13'),


--england
('EN001','Joe Root','Batsman','30 December 1990','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\root.jpg','Test','99','180','8249','48.94','54.31','17','49','0','ODI','149','143','5962','51.36','85.96','16','33','33','T20I','32','30','893','35.72','121.08','0','5','30'),
('EN002','Eoin Morgan','Batsman','10 September 1986','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\morgan.jpg','Test','16','29','700','27.08','62.00','0','5','0','ODI','246','228','7691','39.64','87.05','14','46','46','T20I','89','84','3159','52.65','138.43','0','26','24'),
('EN003','Ben Stokes','All-rounder','4 June 1991','Left Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\stokes.jpg','Test','67','119','4426','37.84','58.18','10','21','0','ODI','95','91','2687','40.06','88.92','3','14','91','T20I','34','29','305','16.94','138.78','0','0','29'),
('EN004','Jos Buttler','Wicket-keeper batsman','8 September 1990','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\buttler.jpg','Test','41','71','2218','34.34','59.31','5','12','0','ODI','152','139','3843','40.88','93.17','9','23','23','T20I','73','66','1226','30.65','138.43','0','7','66'),
('EN005','Jonny Bairstow','Wicket-keeper batsman','26 September 1989','Right Handed','Right-arm medium','D:\Buet\Crazycric-project \player_images\bairstow.jpg','Test','70','125','4030','34.74','54.31','6','21','0','ODI','83','76','2690','47.19','85.96','4','14','76','T20I','32','28','345','17.25','121.08','0','0','28'),
('EN006','Jason Roy','Batsman','21 July 1990','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\roy.jpg','Test','5','10','278','27.80','54.31','0','2','0','ODI','126','126','5067','41.02','85.96','16','25','25','T20I','61','61','1989','38.82','121.08','0','13','61'),
('EN007','Jofra Archer','Bowler','1 April 1995','Right Handed','Right-arm fast','D:\Buet\Crazycric-project\player_images\archer.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','58','58','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('EN008','Chris Woakes','All-rounder','2 March 1989','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\woakes.jpg','Test','37','67','1684','26.07','54.31','0','2','0','ODI','75','75','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('EN009','Adil Rashid','Bowler','17 February 1988','Right Handed','Right-arm legbreak googly','D:\Buet\Crazycric-project\player_images\rashid.jpg','Test','19','34','339','26.07','54.31','0','2','0','ODI','58','58','3059',' 32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('EN010','Mark Wood','Bowler','11 January 1990','Right Handed','Right-arm fast','D:\Buet\Crazycric-project\player_images\wood.jpg','Test','16','29','339','26.07','54.31','0','2','0','ODI','58','58','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('EN011','Liam Plunkett','Bowler','6 April 1985','Right Handed','Right-arm fast','D:\Buet\Crazycric-project\player_images\plunkett.jpg','Test','13','24','339','26.07','54.31','0','2','0','ODI','58','58','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),       

--australia 13 players info
('AU001','Aaron Finch','Batsman','17 November 1986','Right Handed','Slow left-arm orthodox','D:\Buet\Crazycric-project\player_images\finch.jpg','Test','5','10','278','27.80','54.31','0','2','0','ODI','126','126','5067','41.02','85.96','16','25','25','T20I','61','61','1989','38.82','121.08','0','13','61'),
('AU002','David Warner','Batsman','27 October 1986','Left Handed','Right-arm legbreak','D:\Buet\Crazycric-project\player_images\warner.jpg','Test','84','159','7240','48.94','54.31','17','49','0','ODI','126','126','5067','41.02','85.96','16','25','25','T20I','61','61','1989','38.82','121.08','0','13','61'),
('AU003','Steve Smith','Batsman','2 June 1989','Right Handed','Right-arm legbreak','D:\Buet\Crazycric-project\player_images\smith.jpg','Test','73','139','7227','62.84','54.31','26','29','0','ODI','125','125','4162','42.46','85.96','8','25','25','T20I','61','61','1989','38.82','121.08','0','13','61'),
('AU004','Glenn Maxwell','All-rounder','14 October 1988','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\maxwell.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','110','102','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('AU005','Mitchell Starc','Bowler','30 January 1990','Left Handed','Left-arm fast','D:\Buet\Crazycric-project\player_images\starc.jpg','Test','57','109','1684','16.79','54.31','0','2','0','ODI','75','75','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('AU006','Pat Cummins','Bowler','8 May 1993','Right Handed','Right-arm fast','D:\Buet\Crazycric-project\player_images\cummins.jpg','Test','30','57','1684','16.79','54.31','0','2','0','ODI','58','58','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('AU007','Adam Zampa','Bowler','31 March 1992','Right Handed','Right-arm legbreak googly','D:\Buet\Crazycric-project\player_images\zampa.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','58','58','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('AU008','Alex Carey','Wicket-keeper batsman','27 August 1991','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\carey.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','58','58','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('AU009','Josh Hazlewood','Bowler','8 January 1991','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\hazlewood.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','58','58','3059','32.58',' 85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('AU010','Nathan Lyon','Bowler','20 November 1987','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\lyon.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','58','58','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('AU011','Usman Khawaja','Batsman','18 December 1986','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\khawaja.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','58','58','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),       
('AU012','Shaun Marsh','Batsman','9 July 1983','Left Handed','Slow left-arm orthodox','D:\Buet\Crazycric-project\player_images\marsh.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','58','58','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),       
('AU013','Marcus Stoinis','All-rounder','16 August 1989','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\stoinis.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','58','58','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),

--pakistan
('PA001','Babar Azam','Batsman','15 October 1994','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\babar.jpg','Test','26','47','1850','45.12','54.31','5','15','0','ODI','74','74','3359','54.17','85.96','11','16','16','T20I','38','38','1471','50.72','121.08','0','13','38'),
('PA002','Imam-ul-Haq','Batsman','12 December 1995','Left Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\imam.jpg','Test','11','21','485','23.09','54.31','0','2','0','ODI','37','37','1850','54.17','85.96','11','16','16','T20I','38','38','1471','50.72','121.08','0','13','38'),
('PA003','Fakhar Zaman','Batsman','10 April 1990','Left Handed','Slow left-arm orthodox','D:\Buet\Crazycric-project\player_images\fakhar.jpg','Test','5','10','278','27.80','54.31','0','2','0','ODI','38','38','1850','54.17','85.96','11','16','16','T20I','38','38','1471','50.72','121.08','0','13','38'),
('PA004','Shoaib Malik','All-rounder','1 February 1982','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\malik.jpg','Test','35','65','1898','35.14','54.31','3','8','0','ODI','287','273','7534','34.55','85.96','9','44','44','T20I','111','104','2321','31.98','121.08','0','7','104'),
('PA005','Mohammad Hafeez','All-rounder','17 October 1980','Right Handed','Right-arm offbreak','D:\Buet\CrazyCric\player_images\hafeez.jpg','Test','55','98','3652','37.63','54.31','10','12','0','ODI','218','212','6614','32.90','85.96','11','36','36','T20I','89','84','1989','25.11','121.08','0','7','84'),
('PA006','Sarfaraz Ahmed','Wicket-keeper batsman','22 May 1987','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\sarfaraz.jpg','Test','49','89','2652','36.00','54.31','5','14','0','ODI','116','111','2652','36.00','85.96','5','14','14','T20I','58','57','1989','25.11','121.08','0','7','57'),
('PA007','Shadab Khan','All-rounder','4 October 1998','Right Handed','Right-arm legbreak googly','D:\Buet\Crazycric-project\player_images\shadab.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','38','38','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('PA008','Hasan Ali','Bowler','2 July 1994','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\hasan.jpg','Test','9','17','339','26.07','54.31','0','2','0','ODI','38','38','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('PA009','Mohammad Amir','Bowler','13 April 1992','Left Handed','Left-arm fast','D:\Buet\Crazycric-project\player_images\amir.jpg','Test','36','67','1684','16.79','54.31','0','   2','0','ODI','58','58','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('PA010','Mohammad Nawaz','All-rounder','21 March 1994','Left Handed','Slow left-arm orthodox','D:\Buet\Crazycric-project\player_images\nawaz.jpg','Test','3','6','339','26.07','54.31','0','2','0','ODI','38','38','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),
('PA011','Mohammad Rizwan','Wicket-keeper batsman','1 June 1992','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\rizwan.jpg','Test','3','6','339','26.07','54.31','0','2','0','ODI','38','38','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),       
('PA012','Yasir Shah','Bowler','2 May 1986','Right Handed','Right-arm legbreak googly','D:\Buet\Crazycric-project\player_images\yasir.jpg','Test','39','73','1684','16.79','54.31','0','2','0','ODI','58','58','3059','32.58','85.96','3','20','102','T20I','61','61','1989','38.82','121.08','0','13','61'),       
('PA013','Shaheen Afridi','Bowler','6 April 2000','Left Handed','Left-arm fast-medium','D:\Buet\Crazycric-project\player_images\afridi.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','38','38','3059','32.58','85.96','3','20',' 102','T20I','61','61','1989','38.82','121.08','0','13','61'),

--Sri lanka
('SL001','Dimuth Karunaratne','Batsman','21 April 1988','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\karunaratne.jpg','Test','58','108','3899','36.97','54.31','8','23','0','ODI','35','35','1178','30.20','50.00','1','8','8','T20I','22','22','1567','22.38','121.08','0','7','13'),
('SL002','Angelo Mathews','All-rounder','2 June 1987','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\mathews.jpg','Test','86','150','5876','45.16','54.31','10','34','0','ODI','218','209','5381','42.50','85.96','2','34','34','T20I','74','70','1093','27.32','121.08','0','7','70'),
('SL003','Dinesh Chandimal','Wicket-keeper batsman','18 November 1989','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\chandimal.jpg','Test','59','105','3652','36.00','54.31','5','14','0','ODI','149','139','3652','36.00','85.96','5','14','14','T20I','49','48','1178','30.20','121.08','0','7','48'),
('SL004','Kusal Perera','Wicket-keeper batsman','17 August 1990','Left Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\perera.jpg','Test','22','41','1178','30.20','54.31','0','7','0','ODI','84','84','1178','30.20','50.00','1','8','8','T20I','22','22','1567','22.38','121.08','0','7','13'),
('SL005','Kusal Mendis','Batsman','2 February 1995',' Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\mendis.jpg','Test','44','82','2543','34.78','54.31','4','15','0','ODI','74','74','2543','34.78','50.00','4','15','15','T20I','22','22','1567','22.38','121.08','0','7','13'),
('SL006','Lahiru Thirimanne','Batsman','9 September 1989','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\thirimanne.jpg','Test','35','64','1684','26.31','54.31','0','2','0','ODI','35','35','1684','26.31','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('SL007','Thisara Perera','All-rounder','3 April 1989','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\thisara.jpg','Test','6','11','339','26.07','54.31','0','2','0','ODI','166','156','3059','32.58','85.96','3','20','102','T20I','78','68','1567','22.38','121.08','0','7','13'),
('SL008','Nuwan Pradeep','Bowler','19 October 1986','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\pradeep.jpg','Test','25','47','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('SL009','Lasith Malinga','Bowler','28 August 1983','Right Handed','Right-arm fast','D:\Buet\Crazycric-project\player_images\malinga.jpg','Test','30','58','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('SL010','Suranga Lakmal','Bowler','10 March 1987','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\lakmal.jpg','Test','59','105','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('SL011','Isuru Udana','Bowler','17 February 1988','Left Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\udana.jpg','Test','59','105','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('SL012','Akila Dananjaya','Bowler','4 October 1993','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\dananjaya.jpg','Test','59','105','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('SL013','Dhananjaya de Silva','All-rounder','6 September 1991','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\de silva.jpg','Test','59','105','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),

--new zealand
('NZ001','Kane Williamson','Batsman','8 August 1990','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\williamson.jpg','Test','77','142','6476','50.99','54.31','20','30','0','ODI','139','134','6173','47.48','85.96','13','39','39','T20I','60','60','1665','32.64','121.08','0','7','60'),
('NZ002','Ross Taylor','Batsman','8 March 1984','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\taylor.jpg','Test','94','169','7174','46.28','54.31','19','34','0','ODI','218','209','7387','48.03','85.96','21','48','48','T20I','89','84','1567','22.38','121.08','0','7','84'),
('NZ003','Martin Guptill','Batsman','30 September 1986','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\guptill.jpg','Test','47','87','2586','29.72','54.31','3','18','0','ODI','169','169','6626','42.99','85.96','16','37','37','T20I','89','84','1567','22.38','121.08','0','7','84'),
('NZ004','Colin Munro','All-rounder','11 March 1987','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\munro.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('NZ005','Tom Latham','Wicket-keeper batsman','2 April 1992','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\latham.jpg','Test','56','105','3652','36.00','54.31','5','14','0','ODI','84','84','3652','36.00','50.00','5','14','14','T20I','22','22','1567','22.38','121.08','0','7','13'),
('NZ006','James Neesham','All-rounder','17 September 1990','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\neesham.jpg','Test','12','22','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('NZ007','Colin de Grandhomme','All-rounder','22 July 1986','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\grandhomme.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('NZ008','Mitchell Santner','All-rounder','5 February 1992','Left Handed','Slow left-arm orthodox','D:\Buet\Crazycric-project\player_images\santner.jpg','Test','25','47','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('NZ009','Tim Southee','Bowler','11 December 1988','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\southee.jpg','Test','65','121','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('NZ010','Trent Boult','Bowler','22 July 1989','Right Handed','Left-arm fast-medium','D:\Buet\Crazycric-project\player_images\boult.jpg','Test','65','121','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('NZ011','Ish Sodhi','Bowler','31 October 1992','Right Handed','Right-arm legbreak googly','D:\Buet\Crazycric-project\player_images\sodhi.jpg','Test','15','28','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('NZ012','Lockie Ferguson','Bowler','13 June 1991','Right Handed','Right-arm fast','D:\Buet\Crazycric-project\player_images\ferguson.jpg','Test','15','28','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('NZ013','Matt Henry','Bowler','14 December 1991','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\henry.jpg','Test','15','28','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),

--south africa
('SA001','Faf du Plessis','Batsman','13 July 1984','Right Handed','Right-arm legbreak','D:\Buet\Crazycric-project\player_images\du plessis.jpg','Test','63','116','3901','40.02','54.31','10','21','0','ODI','143','136','5327','47.47','85.96','11','39','39','T20I','44','40','1277','35.47','121.08','0','7','40'),
('SA002','Quinton de Kock','Wicket-keeper batsman','17 December 1992','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\de kock.jpg','Test','44','82','2543','34.78','54.31','4','15','0','ODI','121','121','5135','45.90','85.96','14','25','25','T20I','44','40','1277','35.47','121.08','0','7','40'),
('SA003','Hashim Amla','Batsman','31 March 1983','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\amla.jpg','Test','124','215','9282','46.64','54.31','28','41','0','ODI','181','178','8113','49.74','85.96','27','39','39','T20I','44','40','1277','35.47','121.08','0','7','40'),
('SA004','David Miller','Batsman','10 June 1989','Left Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\miller.jpg','Test','63','116','3901','40.02','54.31','10','21','0','ODI','143','136','5327','47.47','85.96','11','39','39','T20I','44','40','1277','35.47','121.08','0','7','40'),
('SA005','JP Duminy','All-rounder','14 April 1984','Left Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\duminy.jpg','Test','46','78','2103','32.85','54.31','2','13','0','ODI','199','189','5117','36.81','85.96','4','27','27','T20I','81','76','1934','38.68','121.08','0','7','76'),
('SA006','Dwaine Pretorius','All-rounder','29 March 1989','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\pretorius.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('SA007','Andile Phehlukwayo','All-rounder','3 March 1996','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\phehlukwayo.jpg','Test','7','13','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('SA008','Kagiso Rabada','Bowler','25 May 1995','Left Handed','Right-arm fast','D:\Buet\Crazycric-project\player_images\rabada.jpg','Test','37','70','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
--('SA009','Imran Tahir','Bowler','27 March 1979','Right Handed','Right-arm legbreak googly','D:\Buet\Crazycric-project\player_images\tahir.jpg','test','55'

--west indies
('WI001','Jason Holder','All-rounder','5 November 1991','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\holder.jpg','Test','37','70','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('WI002','Chris Gayle','Batsman','21 September 1979','Left Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\gayle.jpg','Test','103','182','7214','42.18','54.31','15','37','0','ODI','301','294','10480','37.83','85.96','25','54','54','T20I','58','54','1627','32.54','121.08','0','7','54'),
('WI003','Shai Hope','Wicket-keeper batsman','10 November 1993','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\hope.jpg','Test','30','56','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),
('WI004','Shimron Hetmyer','Batsman','26 December 1996','Left Handed','Right-arm legbreak googly','D:\Buet\Crazycric-project\player_images\hetmyer.jpg','Test','15','28','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('WI005','Darren Bravo','Batsman','6 February 1989','Left Handed','Right-arm medium',' D:\Buet\Crazycric-project\player_images\bravo.jpg','Test','54','100','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('WI006','Nicholas Pooran','Wicket-keeper batsman','2 October 1995','Left Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\pooran.jpg','Test','15','28','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('WI007','Carlos Brathwaite','All-rounder','18 July 1988','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\brathwaite.jpg','Test','15','28','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('WI008','Ashley Nurse','All-rounder','22 December 1988','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\nurse.jpg','Test','15','28','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('WI009','Shannon Gabriel','Bowler','28 April 1988','Right Handed','Right-arm fast','D:\Buet\Crazycric-project\player_images\gabriel.jpg','Test','15','28','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('WI010','Kemar Roach','Bowler','30 June 1988','Right Handed','Right-arm fast','D:\Buet\Crazycric-project\player_images\roach.jpg','Test','15','28','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('WI011','Oshane Thomas','Bowler','18 February 1997','Right Handed','Right-arm fast','D:\Buet\Crazycric-project\player_images\thomas.jpg','Test','15','28','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),       
('WI012','Sheldon Cottrell','Bowler','19 August 1989','Left Handed','Left-arm fast-medium','D:\Buet\Crazycric-project\player_images\cottrell.jpg','Test','15','28','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','22','22','1567','22.38','121.08','0','7','13'),

--zimbabwe
('ZI001','Hamilton Masakadza','Batsman','9 August 1983','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\masakadza.jpg','Test','38','71','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','66','66','1567','22.38','121.08','0','7','66'),
('ZI002','Brendan Taylor','Wicket-keeper batsman','6 February 1986','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\taylor.jpg','Test','38','71','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','66','66','1567','22.38','121.08','0','7','66'),
('ZI003','Craig Ervine','Batsman','19 August 1985','Left Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\ervine.jpg','Test','38','71','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','66','66','1567','22.38','121.08','0','7','66'),
('ZI004','Sean Williams','All-rounder','26 September 1986','Left Handed','Slow left-arm orthodox','D:\Buet\Crazycric-project\player_images\williams.jpg','Test','38','71','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','66','66','1567','22.38','121.08','0','7','66'),
('ZI005','Sikandar Raza','All-rounder','24 April 1986','Right Handed',' Right-arm offbreak','D:\Buet\Crazycric-project\player_images\raza.jpg','Test','38','71','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','66','66','1567','22.38','121.08','0','7','66'),
('ZI006','Solomon Mire','All-rounder','21 August 1989','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\mire.jpg','Test','38','71','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','66','66','1567','22.38','121.08','0','7','66'),
('ZI007','Peter Moor','Wicket-keeper batsman','2 February 1992','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\moor.jpg','Test','38','71','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','66','66','1567','22.38','121.08','0','7','66'),
('ZI008','Elton Chigumbura','All-rounder','14 March 1986','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\chigumbura.jpg','Test','38','71','1684','16.79','54.31','0','2','0','ODI','213','213','1684','16.79','50.00','0','2','2','T20I','66','66','1567','22.38','121.08','0','7','66'),
('ZI009','Tendai Chatara','Bowler','28 February 1991','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\chatara.jpg','Test',' 38','71','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','66','66','1567','22.38','121.08','0','7','66'),
('ZI010','Kyle Jarvis','Bowler','16 January 1989','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\jarvis.jpg','Test','38','71','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','66','66','1567','22.38','121.08','0','7','66'),       
('ZI011','Donald Tiripano','Bowler','24 March 1987','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\tiripano.jpg','Test','38','71','1684','16.79','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','66','66','1567','22.38','121.08','0','7','66'),       
('ZI012','Tendai Chisoro','Bowler','14 March 1986','Right Handed','Slow left-arm orthodox','D:\Buet\Crazycric-project\player_images\chisoro.jpg','Test','38','71','1684','16.79','54.31','0','2','0','ODI','213','213','1684','16.79','50.00','0','2','2','T20I','66','66','1567','22.38','121.08','0','7','66'),       


--afganistan
('AF001','Rashid Khan','Bowler','20 September 1998','Right Handed','Right-arm legbreak googly','D:\Buet\Crazycric-project\player_images\rashid.jpg','Test','2','4','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38'),
('AF002','Mohammad Nabi','All-rounder','3 March 1985','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\nabi.jpg','Test','2','4','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38'),
('AF003','Asghar Afghan','Batsman','22 December 1988','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\afghan.jpg','Test','2','4','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38'),
('AF004','Hazratullah Zazai','Batsman','23 March 1998','Left Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\zazai.jpg','Test','2','4','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38'),
('AF005','Najibullah Zadran','Batsman','18 February 1993','Left Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\zadran.jpg','Test','2','4','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38'),
('AF006','Samiullah Shinwari','All-rounder','31 December 1987','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\shinwari.jpg','Test','2','4','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38'),
('AF007','Mohammad Shahzad','Wicket-keeper batsman','31 December 1987','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\shahzad.jpg','Test','2','4','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38'),
('AF008','Gulbadin Naib','All-rounder','16 March 1991','Right Handed','Right-arm medium','D:\Buet\Crazycric-project\player_images\naib.jpg','Test','2','4','339','26.07','54.31','0','2','0','ODI','54','54','1684','16.79','50.00','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38'),
('AF009','Rahmat Shah','Batsman','6 July 1993','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\rahmat.jpg','Test','2','4','339','26','54.31','0','2','0','ODI','54','54','1684','16.79','50','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38'),
('AF010','Hashmatullah Shahidi','Batsman','6 November 1994','Left Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\shahidi.jpg','Test','2','4','339','26','54.31','0','2','0','ODI','54','54','1684','16.79','50','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38'),       
('AF011','Dawlat Zadran','Bowler','19 March 1988','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\zadran.jpg','Test','2','4','339','26','54.31','0','2','0','ODI','54','54','1684','16.79','50','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38'),       
('AF012','Aftab Alam','Bowler','30 November 1992','Right Handed','Right-arm fast-medium','D:\Buet\Crazycric-project\player_images\alam.jpg','Test','2','4','339','26','54.31','0','2','0','ODI','54','54','1684','16.79','50','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38'),       
('AF013','Mujeeb Ur Rahman','Bowler','28 March 2001','Right Handed','Right-arm offbreak','D:\Buet\Crazycric-project\player_images\rahman.jpg','Test','2','4','339','26','54.31','0','2','0','ODI','54','54','1684','16.79','50','0','2','2','T20I','38','38','1567','22.38','121.08','0','7','38');      

insert into umpire_info values
('ump001','Aleem Dar','Pakistan','D:\Buet\Crazycric-project\umpire_images\dar.jpg'),
('ump002','Kumar Dharmasena','Sri Lanka','D:\Buet\Crazycric-project\umpire_images\dharmasena.jpg'),
('ump003','Marais Erasmus','South Africa','D:\Buet\Crazycric-project\umpire_images\erasmus.jpg'),
('ump004','Chris Gaffaney','New Zealand','D:\Buet\Crazycric-project\umpire_images\gaffaney.jpg'),
('ump005','Ian Gould','England','D:\Buet\Crazycric-project\umpire_images\gould.jpg'),
('ump006','Richard Illingworth','England','D:\Buet\Crazycric-project\umpire_images\illingworth.jpg'),
('ump007','Richard Kettleborough','England','D:\Buet\Crazycric-project\umpire_images\kettleborough.jpg'),
('ump008','Nigel Llong','England','D:\Buet\Crazycric-project\umpire_images\llong.jpg'),
('ump009','Bruce Oxenford','Australia','D:\Buet\Crazycric-project\umpire_images\oxenford.jpg'),
('ump010','Paul Reiffel','Australia','D:\Buet\Crazycric-project\umpire_images\reiffel.jpg'),
('ump011','Rod Tucker','Australia','D:\Buet\Crazycric-project\umpire_images\tucker.jpg'),
('ump012','Joel Wilson','West Indies','D:\Buet\Crazycric-project\umpire_images\wilson.jpg'),
('ump013','Michael Gough','England','D:\Buet\Crazycric-project\umpire_images\gough.jpg'),
('ump014','Ruchira Palliyaguruge','Sri Lanka','D:\Buet\Crazycric-project\umpire_images\palliyaguruge.jpg'),
('ump015','Paul Wilson','Australia','D:\Buet\Crazycric-project\umpire_images\wilson.jpg'),
('ump016','Kumar Dharmasena','Sri Lanka','D:\Buet\Crazycric-project\umpire_images\dharmasena.jpg');











