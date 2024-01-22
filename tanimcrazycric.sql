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
--drop table Users;
--create TABLE Users
--(
--userid VARCHAR not NULL, 
--userpassword VARCHAR not NULL,
--username VARCHAR not NULL,
--countryname VARCHAR not NULL,
--favteam varchar not NULL,
--favplayer varchar not NULL,
--image text,
--CONSTRAINT user_pk PRIMARY key(userid)
--);
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
INSERT INTO player_info VALUES
('1', 'Tamim Iqbal', 'Batsman', 'March 20, 1989', 'Left-Handed', NULL, 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Tamim Iqbal.jpeg',
-- Batting Stats
  100, 190, 8500, 78.45, 45.20, 12, 32, 720, 45, 150,
-- ODI Batting Stats
  220, 215, 9500, 85.20, 43.60, 15, 40, 800, 55, 158,
-- T20 Batting Stats
  70, 68, 1800, 120.30, 28.40, 1, 10, 150, 20, 80,
-- Bowling Stats (Tamim is not a regular bowler)
  100, 5, 30, NULL, NULL, 4.0, NULL, NULL,
   220, 2, 13, NULL, NULL, 13.0, NULL, NULL,
  70, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);
INSERT INTO player_info VALUES
('2', 'Shakib Al Hasan', 'All-Rounder', 'March 24, 1987', 'Left-Handed', 'Slow Left-Arm', 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Shakib Al Hasan.jpeg',
-- Batting Stats
  60, 110, 4500, 82.60, 40.75, 5, 28, 480, 25, 120,
-- ODI Batting Stats
  200, 185, 7800, 88.45, 38.20, 8, 35, 650, 40, 140,
-- T20 Batting Stats
  50, 48, 1200, 130.20, 27.80, 0, 8, 100, 15, 70,
-- Bowling Stats
  60, 140, 3500, 190, 22.40, 4.15, 2, 10,
  200, 170, 4500, 220, 24.80, 4.30, 3, 15,
  50, 60, 1200, 80, 18.90, 5.20, 1, 8
);
INSERT INTO player_info VALUES
('3', 'Mushfiqur Rahim', 'Wicketkeeper-Batsman', 'June 9, 1987', 'Right-Handed', NULL, 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Mushfiqur Rahim.jpeg',
-- Batting Stats
  65, 120, 5200, 76.80, 38.50, 6, 22, 420, 30, 125,
-- ODI Batting Stats
  210, 195, 7200, 87.20, 35.70, 5, 30, 600, 35, 140,
-- T20 Batting Stats
  55, 50, 1100, 115.40, 26.90, 0, 6, 90, 10, 65,
-- Bowling Stats (Mushfiqur is not a regular bowler)
  65, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
  210, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
  55, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);

INSERT INTO player_info VALUES
('4', 'Mahmudullah', 'All-Rounder', 'February 4, 1986', 'Right-Handed', 'Off-Spin', 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Mahmudullah.jpeg',
-- Batting Stats
  50, 95, 3500, 85.20, 40.00, 4, 18, 320, 20, 110,
-- ODI Batting Stats
  180, 165, 5900, 90.00, 37.50, 3, 25, 520, 28, 130,
-- T20 Batting Stats
  45, 40, 900, 120.50, 28.50, 0, 5, 80, 12, 60,
-- Bowling Stats
  40, 100, 2800, 120, 22.80, 4.10, 1, 8,
  180, 120, 3500, 180, 26.50, 4.40, 2, 12,
  45, 45, 900, 55, 18.20, 5.20, 1, 5
);
	INSERT INTO player_info VALUES
('5', 'Mustafizur Rahman', 'Bowler', 'September 6, 1995', 'Left-Handed', 'Left-Arm Fast', 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Mustafizur Rahman.jpeg',
-- Batting Stats (Mustafizur is not known for his batting)
  NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
-- ODI Batting Stats
  40, 20, 100, 50.00, 10.00, 0, 0, 10, 0, 10,
-- T20 Batting Stats
  25, 12, 30, 40.00, 7.50, 0, 0, 5, 0, 5,
-- Bowling Stats
  40, 50, 850, 45, 18.90, 4.00, 0, 3,
  35, 70, 1200, 65, 21.50, 4.20, 0, 4,
  40, 40, 600, 30, 19.20, 4.50, 0, 2
);	
INSERT INTO player_info VALUES
('6', 'Soumya Sarkar', 'All-Rounder', 'February 25, 1993', 'Left-Handed', 'Right-Arm Medium', 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Soumya Sarkar.jpeg',
-- Batting Stats
  35, 60, 1800, 98.50, 30.00, 2, 12, 160, 10, 95,
-- ODI Batting Stats
  110, 105, 3200, 92.00, 32.00, 1, 15, 280, 18, 120,
-- T20 Batting Stats
  40, 38, 800, 130.20, 23.50, 0, 5, 70, 8, 50,
-- Bowling Stats
  35, 25, 300, 8, 37.50, 6.00, 0, 0,
  110, 60, 800, 15, 53.30, 8.50, 0, 0,
  40, 30, 500, 10, 50.00, 7.00, 0, 0
);
INSERT INTO player_info VALUES
('7', 'Mohammad Saifuddin', 'All-Rounder', 'November 1, 1996', 'Right-Handed', 'Right-Arm Fast-Medium', 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Mohammad Saifuddin.jpeg',
-- Batting Stats
  15, 25, 300, 120.50, 20.00, 0, 1, 25, 5, 40,
-- ODI Batting Stats
  40, 35, 600, 110.20, 18.75, 0, 3, 50, 8, 30,
-- T20 Batting Stats
  20, 18, 250, 125.60, 16.60, 0, 1, 30, 4, 25,
-- Bowling Stats
  15, 20, 300, 12, 25.00, 6.00, 0, 0,
  40, 40, 550, 22, 24.90, 5.00, 0, 0,
  20, 25, 350, 18, 22.20, 7.00, 0, 0
);

-- Player 8
INSERT INTO player_info VALUES
('8', 'Afif Hossain', 'All-Rounder', 'September 22, 1999', 'Left-Handed', 'Slow Left-Arm Orthodox', 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Afif Hossain.jpeg',
-- Batting Stats
  10, 18, 250, 130.20, 20.80, 0, 1, 20, 3, 30,
-- ODI Batting Stats
  25, 22, 400, 120.40, 22.20, 0, 2, 30, 5, 25,
-- T20 Batting Stats
  15, 12, 180, 125.00, 20.00, 0, 1, 15, 2, 20,
-- Bowling Stats
  10, 10, 120, 5, 24.00, 6.00, 0, 0,
  25, 25, 300, 12, 25.00, 5.50, 0, 0,
  15, 15, 200, 8, 25.00, 7.00, 0, 0
);
INSERT INTO player_info VALUES
('9', 'Mehidy Hasan Miraz', 'All-Rounder', 'October 25, 1997', 'Right-Handed', 'Right-Arm Off-Spin', 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Mehidy Hasan Miraz.jpeg',
-- Batting Stats
  20, 35, 450, 95.20, 18.75, 0, 2, 40, 5, 30,
-- ODI Batting Stats
  40, 38, 600, 88.50, 17.65, 0, 3, 50, 6, 28,
-- T20 Batting Stats
  25, 22, 350, 120.00, 19.44, 0, 2, 30, 4, 22,
-- Bowling Stats
  20, 30, 400, 18, 22.20, 4.50, 0, 0,
  40, 40, 550, 22, 24.90, 5.00, 0, 0,
  25, 35, 480, 20, 24.00, 5.50, 0, 0
);
INSERT INTO player_info VALUES
('10', 'Taskin Ahmed', 'Fast Bowler', 'April 3, 1995', 'Right-Handed', 'Right-Arm Fast', 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Taskin Ahmed.jpeg',
-- Batting Stats (Taskin is not known for his batting)
  5, 8, 20, 80.00, 5.00, 0, 0, 4, 0, 6,
-- ODI Batting Stats
  40, 15, 50, 60.00, 10.00, 0, 0, 5, 0, 5,
-- T20 Batting Stats
  20, 10, 20, 40.00, 5.00, 0, 0, 2, 0, 2,
-- Bowling Stats
  5, 50, 750, 35, 21.40, 4.80, 0, 0,
  40, 70, 950, 40, 23.75, 5.20, 0, 0,
  20, 25, 400, 18, 22.20, 5.00, 0, 0
);
INSERT INTO player_info VALUES
('11', 'Rubel Hossain', 'Fast Bowler', 'January 1, 1990', 'Right-Handed', 'Right-Arm Fast', 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Rubel Hossain.jpeg',
-- Batting Stats (Rubel is not known for his batting)
  10, 18, 30, 33.30, 3.75, 0, 0, 2, 0, 2,
-- ODI Batting Stats
  120, 45, 150, 45.00, 7.50, 0, 0, 8, 0, 8,
-- T20 Batting Stats
  55, 18, 30, 33.30, 3.75, 0, 0, 2, 0, 2,
-- Bowling Stats
  10, 120, 1800, 75, 24.00, 5.00, 0, 0,
  125, 150, 2200, 100, 22.00, 5.20, 1, 4,
  55, 50, 750, 25, 30.00, 5.00, 0, 0
);
INSERT INTO player_info VALUES
('12', 'Al-Amin Hossain', 'Fast Bowler', 'January 1, 1990', 'Right-Handed', 'Right-Arm Fast-Medium', 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Al-Amin Hossain.jpeg',
-- Batting Stats (Al-Amin is not known for his batting)
  8, 15, 25, 50.00, 3.75, 0, 0, 2, 0, 5,
-- ODI Batting Stats
  50, 22, 30, 30.00, 3.00, 0, 0, 2, 0, 3,
-- T20 Batting Stats
  25, 10, 15, 40.00, 2.50, 0, 0, 1, 0, 4,
-- Bowling Stats
  8, 30, 400, 18, 22.20, 4.80, 0, 0,
  50, 70, 900, 45, 20.00, 4.50, 0, 0,
  28, 28, 350, 15, 23.30, 5.00, 0, 0
);
INSERT INTO player_info VALUES
('13', 'Liton Das', 'Wicketkeeper-Batsman', 'October 13, 1994', 'Right-Handed', NULL, 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Liton Das.jpeg',
-- Batting Stats
  30, 55, 1200, 105.60, 25.00, 1, 10, 110, 15, 80,
-- ODI Batting Stats
  70, 65, 1800, 95.40, 30.00, 3, 18, 150, 20, 100,
-- T20 Batting Stats
  40, 38, 900, 130.00, 28.50, 0, 8, 80, 12, 65,
-- Bowling Stats (Liton is not known for his bowling)
  30, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
  70, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
  40, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);
INSERT INTO player_info VALUES
('14', 'Anamul Haque', 'Wicketkeeper-Batsman', 'December 16, 1992', 'Right-Handed', NULL, 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Anamul Haque.jpeg',
-- Batting Stats
  20, 40, 850, 100.80, 21.00, 0, 5, 90, 10, 70,
-- ODI Batting Stats
  45, 42, 1100, 85.20, 26.00, 1, 8, 100, 15, 80,
-- T20 Batting Stats
  25, 22, 600, 120.40, 28.50, 0, 4, 60, 8, 50,
-- Bowling Stats (Anamul is not known for his bowling)
  20, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
  45, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
  25, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);
INSERT INTO player_info VALUES
('15', 'Mohammad Mithun', 'Batsman', 'March 13, 1990', 'Right-Handed', NULL, 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Mohammad Mithun.jpeg',
-- Batting Stats
  25, 45, 1100, 90.50, 26.00, 0, 10, 100, 18, 75,
-- ODI Batting Stats
  35, 30, 800, 105.30, 30.50, 0, 5, 70, 12, 60,
-- T20 Batting Stats
  20, 18, 400, 120.00, 30.00, 0, 3, 40, 8, 30,
-- Bowling Stats (Mithun is not known for his bowling)
  25, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
  35, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
  20, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);

INSERT INTO player_info VALUES
('16', 'Mosaddek Hossain', 'Batsman', 'December 10, 1995', 'Right-Handed', 'Right-Arm Off-Spin', 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Mosaddek Hossain.jpeg',
-- Batting Stats
  15, 28, 650, 120.00, 32.50, 0, 5, 60, 10, 45,
-- ODI Batting Stats
  40, 35, 900, 110.40, 30.00, 0, 7, 80, 15, 55,
-- T20 Batting Stats
  25, 22, 550, 130.00, 32.00, 0, 4, 50, 8, 40,
-- Bowling Stats
  15, 40, 500, 18, 27.80, 5.00, 0, 0,
  40, 50, 700, 28, 25.00, 4.60, 0, 0,
  25, 25, 300, 15, 20.00, 5.00, 0, 0
);

-- Player 19
INSERT INTO player_info VALUES
('17', 'Najmul Hossain Shanto', 'Batsman', 'February 25, 1999', 'Left-Handed', NULL, 'Bangladesh', 'D:\Buet\Crazycric-project\player images\Najmul Hossain Shanto.jpeg',
-- Batting Stats
  18, 35, 900, 85.60, 28.00, 0, 7, 80, 12, 60,
-- ODI Batting Stats
  25, 22, 600, 95.20, 27.00, 0, 4, 55, 10, 45,
-- T20 Batting Stats
  15, 12, 350, 120.00, 35.00, 0, 3, 40, 8, 30,
-- Bowling Stats
  18, 15, 180, 8, 22.50, 4.50, 0, 0,
  25, 35, 450, 20, 22.50, 5.14, 0, 0,
  15, 20, 220, 10, 22.00, 4.80, 0, 0
);
INSERT INTO player_info 
VALUES 
  ('18', 'Virat Kohli', 'Batsman', '05-Nov-1988', 'Right-Handed', 'Right-Arm Medium', 'India', 'D:\Buet\Crazycric-project\player images\Virat Kohli.jpeg', 
   -- Batting Test Stats
   95, 164, 7547, 53.91, 52.04, 27, 25, 860, 23, 254,
   -- Batting ODI Stats
   254, 245, 12169, 93.17, 59.07, 43, 62, 1177, 127, 183,
   -- Batting T20 Stats
   90, 84, 3159, 138.41, 52.65, 0, 28, 265, 90, 94,
   -- Bowling Test Stats
   95, 184, 2350, 0, 0.0, 0.0, 0, 0,
   -- Bowling ODI Stats
   254, 191, 1111, 4, 277.75, 4.98, 0, 0,
   -- Bowling T20 Stats
   90, 41, 368, 4, 92.0, 8.00, 0, 0),

  ('19', 'Rohit Sharma', 'Batsman', '30-Apr-1987', 'Right-Handed', 'Right-Arm Offbreak', 'India', 'D:\Buet\Crazycric-project\player images\Rohit Sharma.jpeg',
   -- Batting Test Stats
   38, 66, 2615, 61.32, 46.54, 7, 11, 356, 66, 212,
   -- Batting ODI Stats
   227, 220, 9205, 88.90, 49.27, 29, 43, 817, 244, 264,
   -- Batting T20 Stats
   111, 103, 2864, 138.78, 32.62, 4, 21, 245, 127, 118,
   -- Bowling Test Stats
   38, 32, 541, 2, 135.25, 3.18, 0, 0,
   -- Bowling ODI Stats
   227, 155, 1302, 8, 162.75, 5.91, 0, 0,
   -- Bowling T20 Stats
   111, 15, 112, 2, 56.0, 8.00, 0, 0),

  -- Continue adding data for the remaining players...
  
  ('20', 'Jasprit Bumrah', 'Bowler', '06-Dec-1993', 'Right-Handed', 'Right-Arm Fast', 'India', 'D:\Buet\Crazycric-project\player images\Jasprit Bumrah.jpeg',
   -- Batting Test Stats
   24, 28, 199, 18.09, 12.44, 0, 0, 25, 8, 10,
   -- Batting ODI Stats
   69, 14, 19, 95.0, 4.75, 0, 0, 3, 1, 10,
   -- Batting T20 Stats
   50, 15, 5, 83.33, 2.5, 0, 0, 2, 0, 4,
   -- Bowling Test Stats
   24, 45, 2778, 87, 32.0, 2.68, 0, 5,
   -- Bowling ODI Stats
   69, 68, 3571, 112, 25.39, 4.63, 0, 5,
   -- Bowling T20 Stats
   50, 49, 947, 59, 16.05, 6.68, 0, 0);
INSERT INTO player_info 
VALUES 
  ('21', 'Shikhar Dhawan', 'Batsman', '05-Dec-1985', 'Left-Handed', 'Right-Arm Offbreak', 'India', 'D:\Buet\Crazycric-project\player images\Shikhar Dhawan.jpeg',
   -- Batting Test Stats
   34, 62, 2315, 52.61, 40.25, 7, 9, 273, 29, 190,
   -- Batting ODI Stats
   145, 143, 5977, 93.80, 44.41, 17, 30, 711, 110, 143,
   -- Batting T20 Stats
   65, 63, 1673, 127.69, 28.60, 0, 11, 202, 64, 92,
   -- Bowling Test Stats
   34, 13, 119, 0, 0.0, 0.0, 0, 0,
   -- Bowling ODI Stats
   145, 41, 320, 2, 160.0, 5.90, 0, 0,
   -- Bowling T20 Stats
   65, 6, 49, 1, 49.0, 8.17, 0, 0),

  ('22', 'Ajinkya Rahane', 'Batsman', '06-Jun-1988', 'Right-Handed', 'Right-Arm Medium', 'India', 'D:\Buet\Crazycric-project\player images\Ajinkya Rahane.jpeg',
   -- Batting Test Stats
   82, 145, 4600, 45.97, 42.50, 12, 23, 519, 63, 188,
   -- Batting ODI Stats
   90, 83, 2962, 78.63, 42.88, 3, 24, 283, 45, 111,
   -- Batting T20 Stats
   32, 30, 794, 122.45, 29.41, 0, 5, 85, 22, 72,
   -- Bowling Test Stats
   82, 14, 278, 0, 0.0, 0.0, 0, 0,
   -- Bowling ODI Stats
   90, 10, 94, 1, 94.0, 6.93, 0, 0,
   -- Bowling T20 Stats
   32, 2, 20, 0, 0.0, 10.0, 0, 0),

  ('23', 'KL Rahul', 'Batsman', '18-Apr-1992', 'Right-Handed', 'Right-Arm Medium', 'India', 'D:\Buet\Crazycric-project\player images\KL Rahul.jpeg',
   -- Batting Test Stats
   36, 62, 2006, 34.97, 34.55, 5, 11, 290, 46, 149,
   -- Batting ODI Stats
   43, 41, 1557, 88.09, 47.18, 5, 11, 177, 36, 112,
   -- Batting T20 Stats
   61, 57, 1557, 142.60, 40.97, 2, 14, 126, 49, 110,
   -- Bowling Test Stats
   36, 9, 107, 1, 107.0, 4.12, 0, 0,
   -- Bowling ODI Stats
   43, 4, 32, 0, 0.0, 8.0, 0, 0,
   -- Bowling T20 Stats
   61, 2, 21, 0, 0.0, 10.5, 0, 0),

  ('24', 'Rishabh Pant', 'Batsman', '04-Oct-1997', 'Left-Handed', 'Right-Arm Medium', 'India', 'D:\Buet\Crazycric-project\player images\Rishabh Pant.jpeg',
   -- Batting Test Stats
   28, 49, 1736, 60.34, 43.40, 3, 7, 204, 24, 159,
   -- Batting ODI Stats
   22, 20, 562, 105.11, 31.22, 1, 2, 53, 15, 78,
   -- Batting T20 Stats
   39, 34, 789, 128.52, 29.22, 1, 3, 69, 39, 101,
   -- Bowling Test Stats
   28, 2, 12, 0, 0.0, 6.0, 0, 0,
   -- Bowling ODI Stats
   22, 1, 15, 0, 0.0, 7.5, 0, 0,
   -- Bowling T20 Stats
   39, 1, 2, 0, 0.0, 2.0, 0, 0);
INSERT INTO player_info 
VALUES 
  ('25', 'Hardik Pandya', 'Batsman', '11-Oct-1993', 'Right-Handed', 'Right-Arm Fast Medium', 'India', 'D:\Buet\Crazycric-project\player images\Hardik Pandya.jpeg',
   -- Batting Test Stats
   11, 18, 532, 40.92, 31.29, 1, 4, 74, 39, 108,
   -- Batting ODI Stats
   60, 52, 1739, 117.22, 35.43, 0, 11, 160, 77, 92,
   -- Batting T20 Stats
   45, 32, 410, 147.11, 21.57, 0, 2, 41, 20, 33,
   -- Bowling Test Stats
   11, 19, 878, 17, 51.64, 3.86, 0, 0,
   -- Bowling ODI Stats
   60, 52, 2285, 54, 42.31, 5.54, 0, 1,
   -- Bowling T20 Stats
   45, 33, 485, 40, 12.12, 8.33, 0, 0),

  ('26', 'Rahul Dravid', 'Batsman', '11-Jan-1973', 'Right-Handed', 'Right-Arm Offbreak', 'India', 'D:\Buet\Crazycric-project\player images\Rahul Dravid.jpeg',
   -- Batting Test Stats
   164, 286, 13288, 52.31, 52.63, 36, 63, 1659, 63, 270,
   -- Batting ODI Stats
   344, 318, 10889, 71.24, 39.16, 12, 83, 950, 42, 153,
   -- Batting T20 Stats
   1, 1, 31, 103.33, 31.0, 0, 0, 5, 0, 31,
   -- Bowling Test Stats
   164, 120, 1961, 5, 392.2, 1.89, 0, 0,
   -- Bowling ODI Stats
   344, 196, 1060, 4, 265.0, 4.89, 0, 0,
   -- Bowling T20 Stats
   1, 1, 6, 0, 0.0, 6.0, 0, 0);

-- Inserting data for 3 more renowned Indian all-rounders
INSERT INTO player_info 
VALUES 
  ('27', 'Ravindra Jadeja', 'All-Rounder', '06-Dec-1988', 'Left-Handed', 'Left-Arm Orthodox', 'India', 'D:\Buet\Crazycric-project\player images\Ravindra Jadeja.jpeg',
   -- Batting Test Stats
   56, 94, 1954, 41.91, 35.81, 1, 15, 234, 50, 90,
   -- Batting ODI Stats
   168, 113, 2412, 85.14, 32.45, 0, 13, 211, 50, 87,
   -- Batting T20 Stats
   50, 40, 173, 121.12, 17.3, 0, 0, 14, 3, 25,
   -- Bowling Test Stats
   56, 110, 2142, 228, 23.65, 2.04, 9, 5,
   -- Bowling ODI Stats
   168, 156, 4677, 188, 29.62, 4.89, 1, 15,
   -- Bowling T20 Stats
   50, 46, 803, 39, 20.59, 7.12, 0, 0),

  ('28', 'Yuvraj Singh', 'All-Rounder', '12-Dec-1981', 'Left-Handed', 'Left-Arm Orthodox', 'India', 'D:\Buet\Crazycric-project\player images\Yuvraj Singh.jpeg',
   -- Batting Test Stats
   40, 62, 1900, 33.92, 34.80, 3, 11, 169, 42, 169,
   -- Batting ODI Stats
   304, 278, 8701, 87.68, 36.55, 14, 52, 908, 155, 150,
   -- Batting T20 Stats
   58, 51, 1177, 136.38, 28.26, 1, 8, 74, 74, 77,
   -- Bowling Test Stats
   40, 64, 689, 9, 76.56, 3.24, 0, 0,
   -- Bowling ODI Stats
   304, 197, 8051, 111, 38.68, 5.11, 2, 14,
   -- Bowling T20 Stats
   58, 48, 568, 28, 20.28, 7.35, 0, 0),

  ('29', 'Irfan Pathan', 'All-Rounder', '27-Oct-1984', 'Left-Handed', 'Left-Arm Medium Fast', 'India', 'D:\Buet\Crazycric-project\player images\Irfan Pathan.jpeg',
   -- Batting Test Stats
   29, 40, 1105, 31.57, 23.39, 1, 5, 102, 28, 102,
   -- Batting ODI Stats
   120, 107, 1544, 86.07, 23.39, 0, 5, 138, 39, 83,
   -- Batting T20 Stats
   24, 16, 172, 126.61, 14.33, 0, 0, 19, 4, 33,
   -- Bowling Test Stats
   29, 50, 1105, 100, 32.26, 3.28, 2, 1,
   -- Bowling ODI Stats
   120, 115, 4712, 173, 29.72, 5.27, 1, 3,
   -- Bowling T20 Stats
   24, 23, 373, 28, 13.32, 7.57, 0, 0);
INSERT INTO player_info 
VALUES 
  ('30', 'Mohammed Shami', 'Bowler', '03-Sep-1990', 'Right-Handed', 'Right-Arm Fast', 'India', 'D:\Buet\Crazycric-project\player images\Mohammed Shami.jpeg',
   -- Batting Test Stats
   52, 78, 771, 16.31, 11.84, 0, 2, 78, 29, 30,
   -- Batting ODI Stats
   79, 42, 159, 64.55, 9.35, 0, 0, 15, 6, 33,
   -- Batting T20 Stats
   12, 5, 18, 128.57, 9.0, 0, 0, 4, 1, 9,
   -- Bowling Test Stats
   52, 96, 6036, 180, 33.53, 3.52, 0, 5,
   -- Bowling ODI Stats
   79, 78, 4172, 150, 28.31, 5.59, 0, 2,
   -- Bowling T20 Stats
   12, 12, 282, 12, 23.5, 7.05, 0, 0),

  ('31', 'Bhuvneshwar Kumar', 'Bowler', '05-Dec-1990', 'Right-Handed', 'Right-Arm Medium Fast', 'India', 'D:\Buet\Crazycric-project\player images\Bhuvneshwar Kumar.jpeg',
   -- Batting Test Stats
   21, 28, 552, 20.44, 19.39, 0, 3, 63, 32, 63,
   -- Batting ODI Stats
   117, 57, 558, 68.89, 16.41, 0, 2, 48, 15, 53,
   -- Batting T20 Stats
   50, 25, 108, 129.76, 9.82, 0, 0, 15, 2, 26,
   -- Bowling Test Stats
   21, 40, 1681, 63, 26.68, 3.16, 1, 1,
   -- Bowling ODI Stats
   117, 114, 5762, 147, 39.16, 5.02, 0, 3,
   -- Bowling T20 Stats
   50, 49, 1184, 41, 28.88, 7.2, 0, 0),

  ('32', 'Ravichandran Ashwin', 'Bowler', '17-Sep-1986', 'Right-Handed', 'Right-Arm Offbreak', 'India', 'D:\Buet\Crazycric-project\player images\Ravichandran Ashwin.jpeg',
   -- Batting Test Stats
   83, 152, 2685, 24.56, 29.18, 5, 11, 306, 106, 118,
   -- Batting ODI Stats
   111, 49, 658, 80.10, 12.74, 0, 0, 62, 35, 38,
   -- Batting T20 Stats
   46, 23, 190, 138.40, 17.77, 0, 0, 28, 13, 31,
   -- Bowling Test Stats
   83, 157, 3639, 413, 25.07, 2.83, 7, 30,
   -- Bowling ODI Stats
   111, 109, 4800, 150, 31.99, 4.93, 0, 3,
   -- Bowling T20 Stats
   46, 45, 1026, 54, 19.0, 6.68, 0, 0);















