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
('1', 'Tamim Iqbal', 'Batsman', 'March 20, 1989', 'Left-Handed', NULL, 'Bangladesh', 'http://localhost:3000/images/Tamim%20Iqbal.jpeg
',
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
('2', 'Shakib Al Hasan', 'All-Rounder', 'March 24, 1987', 'Left-Handed', 'Left Arm Orthodox', 'Bangladesh', 'http://localhost:3000/images/Shakib%20Al%20Hasan.jpeg
',
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
('3', 'Mushfiqur Rahim', 'Wk', 'June 9, 1987', 'Right-Handed', NULL, 'Bangladesh', 'http://localhost:3000/images/Mushfiqur%20Rahim.jpeg
',
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
('4', 'Mahmudullah', 'All-Rounder', 'February 4, 1986', 'Right-Handed', 'Right Arm Off Spin', 'Bangladesh', 'http://localhost:3000/images/Mahmudullah%20.jpeg
',
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
('5', 'Mustafizur Rahman', 'Bowler', 'September 6, 1995', 'Left-Handed', 'Left Arm Fast', 'Bangladesh', 'http://localhost:3000/images/Mustafizur%20Rahman.jpeg
',
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
('6', 'Soumya Sarkar', 'All-Rounder', 'February 25, 1993', 'Left-Handed', 'Right Arm Medium', 'Bangladesh', 'http://localhost:3000/images/Soumya%20Sarkar.jpeg',
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
('7', 'Mohammad Saifuddin', 'All-Rounder', 'November 1, 1996', 'Right-Handed', 'Right Arm Medium', 'Bangladesh', 'http://localhost:3000/images/Mohammad%20Saifuddin.jpeg',
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
('8', 'Afif Hossain', 'All-Rounder', 'September 22, 1999', 'Left-Handed', 'Left Arm Orthodox', 'Bangladesh', 'http://localhost:3000/images/Afif%20Hossain.jpeg',
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
('9', 'Mehidy Hasan Miraz', 'All-Rounder', 'October 25, 1997', 'Right-Handed', 'Right Arm Off Spin', 'Bangladesh', 'http://localhost:3000/images/Mehidy%20Hasan%20Miraz.jpeg',
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
('10', 'Taskin Ahmed', 'Bowler', 'April 3, 1995', 'Right-Handed', 'Right Arm Fast', 'Bangladesh', 'http://localhost:3000/images/Taskin%20Ahmed.jpeg',
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
('11', 'Rubel Hossain', 'Bowler', 'January 1, 1990', 'Right-Handed', 'Right Arm Fast', 'Bangladesh', 'http://localhost:3000/images/Rubel%20Hossain.jpeg',
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
('12', 'Al-Amin Hossain', 'Bowler', 'January 1, 1990', 'Right-Handed', 'Right Arm Fast', 'Bangladesh','http://localhost:3000/images/Al-Amin%20Hossain.jpeg',
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
('13', 'Liton Das', 'Wk', 'October 13, 1994', 'Right-Handed', NULL, 'Bangladesh', 'http://localhost:3000/images/Liton%20Das.jpeg',
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
('14', 'Anamul Haque', 'Wk', 'December 16, 1992', 'Right-Handed', NULL, 'Bangladesh', 'http://localhost:3000/images/Anamul%20Haque.jpeg',
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
('15', 'Mohammad Mithun', 'Batsman', 'March 13, 1990', 'Right-Handed', NULL, 'Bangladesh', 'http://localhost:3000/images/Mohammad%20Mithun.jpeg',
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
('16', 'Mosaddek Hossain', 'Batsman', 'December 10, 1995', 'Right-Handed', 'Right Arm Off Spin', 'Bangladesh', 'http://localhost:3000/images/Mosaddek%20Hossain.jpeg',
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
('17', 'Najmul Hossain Shanto', 'Batsman', 'February 25, 1999', 'Left-Handed', 'Right Arm Off Spin', 'Bangladesh', 'http://localhost:3000/images/Najmul%20Hossain%20Shanto.jpeg',
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
  ('18', 'Virat Kohli', 'Batsman', '05-Nov-1988', 'Right-Handed', 'Right Arm Medium', 'India', 'http://localhost:3000/images/Virat%20Kohli.jpeg', 
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

  ('19', 'Rohit Sharma', 'Batsman', '30-Apr-1987', 'Right-Handed', 'Right Arm Off Spin', 'India', '',
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
  
  ('20', 'Jasprit Bumrah', 'Bowler', '06-Dec-1993', 'Right-Handed', 'Right Arm Fast', 'India', 'http://localhost:3000/images/Jasprit%20Bumrah.jpeg',
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
  ('21', 'Shikhar Dhawan', 'Batsman', '05-Dec-1985', 'Left-Handed', 'Right Arm Off Spin', 'India', 'http://localhost:3000/images/Shikhar%20Dhawan.jpeg',
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

  ('22', 'Ajinkya Rahane', 'Batsman', '06-Jun-1988', 'Right-Handed', 'Right Arm Medium', 'India', 'http://localhost:3000/images/Ajinkya%20Rahane.jpeg',
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

  ('23', 'KL Rahul', 'Wk', '18-Apr-1992', 'Right-Handed', 'Right Arm Medium', 'India', 'http://localhost:3000/images/KL%20Rahul.jpeg',
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

  ('24', 'Rishabh Pant', 'Wk', '04-Oct-1997', 'Left-Handed', 'Right Arm Medium', 'India', 'http://localhost:3000/images/Rishabh%20Pant.jpeg',
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
  ('25', 'Hardik Pandya', 'Batsman', '11-Oct-1993', 'Right-Handed', 'Right Arm Fast', 'India', 'http://localhost:3000/images/Hardik%20Pandya.jpeg',
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

  ('26', 'Rahul Dravid', 'Batsman', '11-Jan-1973', 'Right-Handed', 'Right Arm Off Spin', 'India', 'http://localhost:3000/images/Rahul%20Dravid.jpeg',
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
  ('27', 'Ravindra Jadeja', 'All-Rounder', '06-Dec-1988', 'Left-Handed', 'Left Arm Orthodox', 'India', 'http://localhost:3000/images/Ravindra%20Jadeja.jpeg',
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

  ('28', 'Yuvraj Singh', 'All-Rounder', '12-Dec-1981', 'Left-Handed', 'Left Arm Orthodox', 'India', 'http://localhost:3000/images/Yuvraj%20Singh.jpeg',
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

  ('29', 'Irfan Pathan', 'All-Rounder', '27-Oct-1984', 'Left-Handed', 'Left Arm Fast', 'India', 'http://localhost:3000/images/Irfan%20Pathan.jpeg',
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
  ('30', 'Mohammed Shami', 'Bowler', '03-Sep-1990', 'Right-Handed', 'Right Arm Fast', 'India', 'http://localhost:3000/images/Mohammed%20Shami.jpeg',
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

  ('31', 'Bhuvneshwar Kumar', 'Bowler', '05-Dec-1990', 'Right-Handed', 'Right Arm Fast', 'India', 'http://localhost:3000/images/Bhuvneshwar%20Kumar.jpeg',
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

  ('32', 'Ravichandran Ashwin', 'Bowler', '17-Sep-1986', 'Right-Handed', 'Right Arm Off Spin', 'India', 'http://localhost:3000/images/Ravichandran%20Ashwin.jpeg',
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

   --new zealand players

   insert into player_info
    values
    ('33', 'Kane Williamson', 'Batsman', 'August 8, 1990', 'Right-Handed', NULL, 'New Zealand', 'http://localhost:3000/images/Kane%20Williamson.jpeg',
-- Batting Stats
  80, 150, 7000, 85.60, 47.80, 20, 45, 600, 60, 150,
-- ODI Batting Stats
  180, 175, 9000, 90.75, 52.40, 25, 55, 800, 70, 170,
-- T20 Batting Stats
  60, 58, 1500, 130.45, 32.10, 2, 15, 130, 18, 85,
-- Bowling Stats (Williamson occasionally bowls)
  80, 10, 50, 4, 12.50, 3.0, NULL, NULL,
  180, 20, 80, 6, 14.20, 3.5, NULL, NULL,
  60, 5, 20, 2, 11.50, 3.2, NULL, NULL
);
INSERT INTO player_info VALUES
('34', 'Ross Taylor', 'Batsman', 'March 8, 1984', 'Right-Handed', NULL, 'New Zealand', 'http://localhost:3000/images/Ross%20Taylor.jpeg',
-- Batting Stats
  100, 180, 8500, 79.20, 43.60, 15, 40, 720, 50, 145,
-- ODI Batting Stats
  220, 210, 9800, 87.80, 45.90, 18, 48, 850, 60, 160,
-- T20 Batting Stats
  75, 72, 1900, 118.60, 31.40, 1, 12, 160, 25, 90,
-- Bowling Stats (Taylor bowls occasionally)
  100, 5, 40, 3, 13.30, 3.5, NULL, NULL,
  220, 8, 60, 5, 15.20, 4.0, NULL, NULL,
  75, 2, 10, 1, 11.50, 3.0, NULL, NULL
);
INSERT INTO player_info VALUES
('35', 'Tom Latham', 'Wk', 'April 2, 1992', 'Left-Handed', NULL, 'New Zealand', 'http://localhost:3000/images/Tom%20Latham.jpeg',
-- Batting Stats
  50, 90, 3500, 75.40, 42.10, 8, 20, 420, 35, 120,
-- ODI Batting Stats
  150, 140, 5500, 85.20, 38.80, 12, 30, 600, 45, 140,
-- T20 Batting Stats
  40, 38, 900, 110.30, 26.60, 0, 5, 80, 12, 50,
-- Bowling Stats (Latham is not a regular bowler)
  50, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
  150, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
  40, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);
INSERT INTO player_info VALUES
('36', 'Martin Guptill', 'Batsman', 'September 30, 1986', 'Right-Handed', NULL, 'New Zealand', 'http://localhost:3000/images/Martin%20Guptill.jpeg',
-- Batting Stats (Test)
  45, 80, 3500, 75.40, 45.20, 5, 18, 320, 30, 110,
-- Batting Stats (ODI)
  180, 175, 8200, 87.20, 42.60, 16, 38, 750, 65, 189,
-- Batting Stats (T20)
  65, 60, 1600, 120.80, 30.40, 2, 14, 130, 20, 85,
-- Bowling Stats (Test)
  45, 5, 25, NULL, NULL, 3.0, NULL, NULL,
-- Bowling Stats (ODI)
  180, 20, 90, NULL, NULL, 4.2, NULL, NULL,
-- Bowling Stats (T20)
  65, 8, 45, NULL, NULL, 5.0, NULL, NULL
);
INSERT INTO player_info VALUES
('37', 'Colin Munro', 'All-rounder', '11 March 1987', 'Left Handed', 'Right Arm medium', 'http://localhost:3000/images/Colin_Munro.jpeg',
-- Test Batting Stats
  7, 13, 339, 26.07, 54.31, 0, 2, 0, NULL, NULL,
-- ODI Batting Stats
  54, 54, 1684, 16.79, 50.00, 0, 2, 2, NULL, NULL,
-- T20I Batting Stats
  22, 22, 1567, 22.38, 121.08, 0, 7, 13, NULL, NULL,
-- Test Bowling Stats
  7, 0, 0, NULL, NULL, NULL, NULL, NULL,
-- ODI Bowling Stats
  54, 2, 13, NULL, NULL, 6.5, NULL, NULL,
-- T20I Bowling Stats
  22, 0, 0, NULL, NULL, NULL, NULL, NULL
);
INSERT INTO player_info VALUES
('38', 'Colin de Grandhomme', 'All-rounder', '22 July 1986', 'Right Handed', 'Right Arm Fast', 'http://localhost:3000/images/Colin%20De%20Grandhomme.jpeg',
-- Test Batting Stats
  7, 13, 339, 26.07, 54.31, 0, 2, 0, NULL, NULL,
-- ODI Batting Stats
  54, 54, 1684, 16.79, 50.00, 0, 2, 2, NULL, NULL,
-- T20I Batting Stats
  22, 22, 1567, 22.38, 121.08, 0, 7, 13, NULL, NULL,
-- Test Bowling Stats
  7, 1, 4, NULL, NULL, 4.0, NULL, NULL, 
-- ODI Bowling Stats
  54, 3, 21, NULL, NULL, 7.0, NULL, NULL, 
-- T20I Bowling Stats
  22, 1, 12, NULL, NULL, 12.0, NULL, NULL
);
-- Insert data for 4 New Zealand fast bowlers
INSERT INTO player_info VALUES
('73', 'Tim Southee', 'Bowler', '1998-12-11', 'Right-handed', 'Right Arm Fast', 'New Zealand', 'http://localhost:3000/images/Tim%20Southee.jpeg',
  -- Batting Stats - Test
  75, 105, 1774, 61.27, 18.94, 3, 8, 202, 45,
  -- Batting Stats - ODI
  143, 129, 1572, 106.58, 16.28, 0, 5, 142, 43,
  -- Batting Stats - T20
  82, 46, 582, 138.21, 19.4, 0, 0, 61, 39,
  -- Bowling Stats - Test
  75, 140, 4121, 324, 25.52, 2.93, 5, 11,
  -- Bowling Stats - ODI
  143, 137, 4381, 189, 27.65, 5.33, 2, 4,
  -- Bowling Stats - T20
  82, 81, 1603, 99, 16.19, 7.52, 0, 1
);

-- Insert data for another fast bowler
INSERT INTO player_info VALUES
('74', 'Trent Boult', 'Bowler', '1989-07-22', 'Left-handed', 'Left Arm Fast', 'New Zealand', 'http://localhost:3000/images/Trent%20Boult.jpeg',
  -- Batting Stats - Test
  75, 97, 1603, 58.14, 18.53, 1, 3, 52, 37,
  -- Batting Stats - ODI
  124, 72, 386, 88.24, 11.35, 0, 0, 22, 18,
  -- Batting Stats - T20
  44, 20, 49, 98, 6.13, 0, 0, 4, 7,
  -- Bowling Stats - Test
  75, 143, 3833, 287, 26.7, 2.68, 3, 5,
  -- Bowling Stats - ODI
  124, 123, 6471, 175, 29.34, 5.07, 1, 5,
  -- Bowling Stats - T20
  44, 43, 981, 60, 16.35, 7.36, 0, 0
);

-- Insert data for another fast bowler
INSERT INTO player_info VALUES
('75', 'Neil Wagner', 'Bowler', '1986-10-13', 'Left-handed', 'Left Arm Fast', 'New Zealand', 'http://localhost:3000/images/Neil%20Wagner.jpeg',
  -- Batting Stats - Test
  54, 79, 1191, 49.89, 15.65, 0, 7, 37, 37,
  -- Batting Stats - ODI
  0, 0, 0, 0, 0, 0, 0, 0, 0,
  -- Batting Stats - T20
  0, 0, 0, 0, 0, 0, 0, 0, 0,
  -- Bowling Stats - Test
  54, 103, 3417, 235, 27.55, 2.83, 0, 5,
  -- Bowling Stats - ODI
  0, 0, 0, 0, 0, 0, 0, 0,
  -- Bowling Stats - T20
  0, 0, 0, 0, 0, 0, 0, 0
);

-- Insert data for another fast bowler
INSERT INTO player_info VALUES
('76', 'Lockie Ferguson', 'Bowler', '1991-06-13', 'Right-handed', 'Right Arm Fast', 'New Zealand', 'http://localhost:3000/images/Lockie%20Ferguson.jpeg',
  -- Batting Stats - Test
  0, 0, 0, 0, 0, 0, 0, 0, 0,
  -- Batting Stats - ODI
  35, 12, 59, 109.25, 9.83, 0, 0, 6, 5,
  -- Batting Stats - T20
  15, 5, 9, 69.23, 3.6, 0, 0, 1, 2,
  -- Bowling Stats - Test
  0, 0, 0, 0, 0, 0, 0, 0,
  -- Bowling Stats - ODI
  35, 35, 1889, 69, 27.41, 5.61, 0, 1,
  -- Bowling Stats - T20
  15, 15, 404, 26, 15.53, 8.16, 0, 0
);

-- Insert data for a spinner
INSERT INTO player_info VALUES
('77', 'Mitchell Santner', 'Bowler', '1992-02-05', 'Left-handed', 'Left Arm Orthodox', 'New Zealand', 'http://localhost:3000/images/Mitchell%20Santner.jpeg',
  -- Batting Stats - Test
  24, 36, 966, 63.52, 23.04, 1, 6, 73, 45,
  -- Batting Stats - ODI
  77, 56, 706, 83.15, 19.61, 0, 1, 50, 34,
  -- Batting Stats - T20
  54, 33, 310, 115.67, 17.22, 0, 1, 24, 25,
  -- Bowling Stats - Test
  24, 45, 2419, 41, 35.82, 2.98, 0, 0,
  -- Bowling Stats - ODI
  77, 76, 3036, 92, 32.96, 5.17, 0, 1,
  -- Bowling Stats - T20
  54, 53, 1100, 61, 18.03, 7.52, 0, 0
);
INSERT INTO player_info VALUES
('78', 'James Neesham', 'All-rounder', '1990-09-17', 'Left-handed', 'Right Arm Fast', 'New Zealand', 'http://localhost:3000/images/James%20Neesham.jpeg',
  -- Batting Stats - Test
  12, 18, 709, 39.38, 32.23, 2, 3, 91, 174,
  -- Batting Stats - ODI
  65, 53, 1351, 33.77, 109.28, 2, 5, 99, 47,
  -- Batting Stats - T20
  32, 25, 410, 147.11, 20.5, 0, 3, 45, 48,
  -- Bowling Stats - Test
  12, 23, 699, 16, 43.69, 3.83, 0, 0,
  -- Bowling Stats - ODI
  65, 49, 2094, 63, 33.23, 5.74, 0, 1,
  -- Bowling Stats - T20
  32, 21, 383, 23, 16.65, 8.28, 0, 0
);
INSERT INTO player_info VALUES
('79', 'Tom Blundell', 'Batsman', '1990-09-01', 'Right-handed', NULL, 'New Zealand', 'http://localhost:3000/images/Tom%20Blundell.jpeg',
  -- Batting Stats - Test
  9, 18, 567, 35.43, 43.55, 1, 4, 77, 121,
  -- Batting Stats - ODI
  10, 10, 196, 19.60, 67.12, 0, 1, 18, 66,
  -- Batting Stats - T20
  8, 8, 128, 114.29, 16.00, 0, 0, 16, 30,
  -- Bowling Stats - Test
  9, 1, 3, 0, 0, 3, 0, 0,
  -- Bowling Stats - ODI
  10, 0, 0, 0, 0, 0, 0, 0,
  -- Bowling Stats - T20
  8, 0, 0, 0, 0, 0, 0, 0
);

-- Batsman 6
INSERT INTO player_info VALUES
('80', 'Henry Nicholls', 'Batsman', '1991-11-15', 'Left-handed', 'Right Arm Medium', 'New Zealand', 'http://localhost:3000/images/Henry%20Nicholls.jpeg',
  -- Batting Stats - Test
  42, 72, 2076, 35.10, 45.30, 3, 13, 162, 174,
  -- Batting Stats - ODI
  58, 52, 1683, 35.90, 81.36, 1, 12, 145, 124,
  -- Batting Stats - T20
  23, 23, 411, 135.26, 20.55, 0, 2, 41, 38,
  -- Bowling Stats - Test
  42, 6, 19, 0, 0, 5.53, 0, 0,
  -- Bowling Stats - ODI
  58, 4, 21, 1, 21, 5.25, 0, 0,
  -- Bowling Stats - T20
  23, 1, 5, 0, 0, 7.5, 0, 0
);
INSERT INTO player_info VALUES
('81', 'Ish Sodhi', 'All-rounder', '1992-10-31', 'Right-handed', 'Right Arm Leg Spin', 'New Zealand', 'http://localhost:3000/images/Ish%20Sodhi.jpeg',
  -- Batting Stats - Test
  21, 28, 359, 17.09, 28.64, 0, 2, 63, 63,
  -- Batting Stats - ODI
  33, 11, 97, 14.42, 72.62, 0, 0, 14, 38,
  -- Batting Stats - T20
  44, 11, 102, 146.37, 17.14, 0, 0, 12, 29,
  -- Bowling Stats - Test
  21, 39, 1841, 41, 44.85, 2.83, 0, 1,
  -- Bowling Stats - ODI
  33, 32, 1767, 63, 28.02, 5.52, 0, 2,
  -- Bowling Stats - T20
  44, 44, 971, 53, 18.32, 7.57, 0, 0
);

--australia

INSERT INTO player_info VALUES
('39', 'Steve Smith', 'Batsman', 'June 2, 1989', 'Right-Handed', 'Right Arm Leg Spin', 'Australia', 'http://localhost:3000/images/Steve%20Smith.jpeg',
  -- Batting Stats - Test
  80, 150, 7500, 65.80, 61.20, 28, 40, 900, 80, 170,
  -- Batting Stats - ODI
  120, 115, 5800, 89.45, 47.60, 12, 30, 620, 45, 130,
  -- Batting Stats - T20
  50, 45, 1100, 125.30, 28.40, 0, 12, 120, 15, 70,
  -- Bowling Stats - Test
  80, 160, 2300, 35, 15.20, 2.80, 0, 2,
  -- Bowling Stats - ODI
  120, 110, 1800, 40, 22.60, 4.10, 0, 1,
  -- Bowling Stats - T20
  50, 40, 800, 18, 20.50, 5.00, 0, 0
);

-- Player 2
INSERT INTO player_info VALUES
('40', 'David Warner', 'Batsman', 'October 27, 1986', 'Left-Handed', 'Right Arm Medium', 'Australia', 'http://localhost:3000/images/David%20Warner.jpeg',
  -- Batting Stats - Test
  85, 160, 8000, 75.20, 55.80, 23, 35, 880, 70, 155,
  -- Batting Stats - ODI
  130, 125, 6900, 92.30, 56.40, 18, 38, 720, 50, 140,
  -- Batting Stats - T20
  60, 55, 1300, 140.10, 32.80, 1, 15, 130, 18, 85,
  -- Bowling Stats - Test
  85, 170, 1800, 25, 18.20, 3.20, 0, 1,
  -- Bowling Stats - ODI
  130, 120, 1200, 28, 24.60, 4.30, 0, 0,
  -- Bowling Stats - T20
  60, 50, 600, 15, 21.40, 5.50, 0, 0
);

-- Player 3
INSERT INTO player_info VALUES
('41', 'Pat Cummins', 'Bowler', 'May 8, 1993', 'Right-Handed', 'Right Arm Fast', 'Australia', 'http://localhost:3000/images/Pat%20Cummins.jpeg',
  -- Batting Stats - Test
  60, 80, 1500, 50.60, 18.20, 1, 10, 150, 20, 55,
  -- Batting Stats - ODI
  90, 70, 900, 60.80, 15.40, 0, 2, 80, 10, 35,
  -- Batting Stats - T20
  45, 30, 400, 70.20, 12.80, 0, 1, 40, 5, 25,
  -- Bowling Stats - Test
  60, 110, 4200, 160, 20.50, 3.80, 5, 15,
  -- Bowling Stats - ODI
  90, 80, 3400, 110, 23.40, 4.20, 3, 10,
  -- Bowling Stats - T20
  45, 40, 1200, 60, 18.90, 5.00, 1, 5
);

-- Player 4
INSERT INTO player_info VALUES
('42', 'Mitchell Starc', 'Bowler', 'January 30, 1990', 'Left-Handed', 'Left Arm Fast', 'Australia', 'http://localhost:3000/images/Mitchell%20Starc.jpeg',
  -- Batting Stats - Test
  55, 70, 900, 30.40, 14.80, 0, 5, 90, 12, 35,
  -- Batting Stats - ODI
  80, 60, 600, 40.80, 12.00, 0, 1, 60, 8, 25,
  -- Batting Stats - T20
  40, 25, 300, 50.20, 10.40, 0, 2, 30, 5, 18,
  -- Bowling Stats - Test
  55, 100, 3600, 150, 21.20, 3.70, 4, 12,
  -- Bowling Stats - ODI
  80, 70, 2800, 120, 24.30, 4.20, 3, 10,
  -- Bowling Stats - T20
  40, 35, 1000, 45, 18.80, 5.20, 1, 5
);
INSERT INTO player_info VALUES
('82', 'Marnus Labuschagne', 'Batsman', '1994-06-22', 'Right-handed', 'Right Arm Leg Spin', 'Australia', 'http://localhost:3000/images/Marnus%20Labuschagne.jpeg',
  -- Batting Stats - Test 
  21, 41, 2144, 60.94, 50.63, 8, 7, 16, 215,
  -- Batting Stats - ODI
  9, 9, 473, 59.13, 91.88, 1, 3, 42, 108,
  -- Batting Stats - T20
  15, 15, 506, 134.47, 39, 0, 5, 45, 70,
  -- Bowling Stats - Test
  21, 29, 614, 5, 122.8, 3.17, 0, 0,
  -- Bowling Stats - ODI
  9, 5, 29, 0, 0, 5.8, 0, 0,
  -- Bowling Stats - T20
  15, 4, 20, 0, 0, 10, 0, 0
);

-- Batsman 4
INSERT INTO player_info VALUES
('83', 'Aaron Finch', 'Batsman', '1986-11-17', 'Right-handed', 'Left Arm Orthodox', 'Australia', 'http://localhost:3000/images/Aaron%20Finch.jpeg',
  -- Batting Stats - Test
  5, 10, 278, 27.8, 27.8, 0, 2, 20, 62,
  -- Batting Stats - ODI
  133, 130, 4956, 39.01, 87.55, 17, 29, 476, 153,
  -- Batting Stats - T20
  69, 69, 2102, 151.51, 36.21, 2, 13, 216, 172,
  -- Bowling Stats - Test
  5, 4, 34, 1, 34, 5.67, 0, 0,
  -- Bowling Stats - ODI
  133, 25, 152, 2, 76, 6.08, 0, 0,
  -- Bowling Stats - T20
  69, 8, 52, 1, 52, 8.67, 0, 0
);

-- Batsman 5
INSERT INTO player_info VALUES
('84', 'Travis Head', 'Batsman', '1993-12-29', 'Left-handed', 'Right Arm Off Spin', 'Australia', 'http://localhost:3000/images/Travis%20Head.jpeg',
  -- Batting Stats - Test
  19, 36, 1342, 38.34, 38.34, 2, 8, 114, 161,
  -- Batting Stats - ODI
  7, 7, 319, 45.57, 81.96, 0, 3, 35, 96,
  -- Batting Stats - T20
  11, 11, 319, 124.61, 29, 0, 1, 31, 101,
  -- Bowling Stats - Test
  19, 3, 12, 0, 0, 4, 0, 0,
  -- Bowling Stats - ODI
  7, 1, 8, 0, 0, 8, 0, 0,
  -- Bowling Stats - T20
  11, 1, 2, 0, 0, 2, 0, 0
);
INSERT INTO player_info VALUES
('85', 'Usman Khawaja', 'Batsman', '1986-12-18', 'Left-handed', 'Right Arm Medium', 'Australia', 'http://localhost:3000/images/Usman%20Khawaja.jpeg',
  -- Batting Stats - Test
  44, 75, 2887, 40.97, 48.24, 8, 16, 324, 174,
  -- Batting Stats - ODI
  40, 40, 1554, 40.89, 84.03, 2, 10, 146, 104,
  -- Batting Stats - T20
  9, 9, 209, 145.83, 23.22, 0, 1, 18, 50,
  -- Bowling Stats - Test
  44, 2, 7, 0, 0, 3.5, 0, 0,
  -- Bowling Stats - ODI
  40, 1, 4, 0, 0, 4, 0, 0
);

-- Batsman 7
INSERT INTO player_info VALUES
('86', 'Marcus Harris', 'Batsman', '1992-07-21', 'Left-handed', 'Right Arm Medium', 'Australia', 'http://localhost:3000/images/Marcus%20Harris.jpeg',
  -- Batting Stats - Test
  12, 24, 724, 30.17, 33.95, 1, 5, 83, 79,
  -- Batting Stats - ODI
  3, 3, 58, 19.33, 50, 0, 0, 4, 39,
  -- Batting Stats - T20
  1, 1, 14, 116.67, 14, 0, 0, 2, 14,
  -- Bowling Stats - Test
  12, 1, 6, 0, 0, 6, 0, 0,
  -- Bowling Stats - ODI
  3, 0, 0, 0, 0, 0, 0, 0
);

-- Batsman 8
INSERT INTO player_info VALUES
('87', 'Joe Burns', 'Batsman', '1989-09-06', 'Right-handed', 'Right Arm Medium', 'Australia', 'http://localhost:3000/images/Joe%20Burns.jpeg',
  -- Batting Stats - Test
  23, 40, 1446, 36.15, 38.78, 4, 8, 175, 170,
  -- Batting Stats - ODI
  6, 6, 225, 37.5, 91.46, 0, 2, 25, 73,
  -- Batting Stats - T20
  3, 3, 50, 139.13, 25, 0, 0, 7, 27,
  -- Bowling Stats - Test
  23, 1, 2, 0, 0, 2, 0, 0,
  -- Bowling Stats - ODI
  6, 0, 0, 0, 0, 0, 0, 0
);


-- Insert data for 4 more all-rounders
-- All-rounder 5
INSERT INTO player_info VALUES
('88', 'Glenn Maxwell', 'All-rounder', '1988-10-14', 'Right-handed', 'Right Arm Off Spin', 'Australia', 'http://localhost:3000/images/Glenn%20Maxwell.jpeg',
  -- Batting Stats - Test
  7, 12, 339, 28.25, 60.79, 0, 2, 40, 64,
  -- Batting Stats - ODI
  126, 109, 3081, 32.33, 122.18, 3, 20, 240, 145,
  -- Batting Stats - T20
  72, 62, 1675, 33.5, 157.72, 1, 7, 106, 103,
  -- Bowling Stats - Test
  7, 10, 240, 3, 80, 4.8, 0, 0,
  -- Bowling Stats - ODI
  126, 58, 1014, 31, 32.71, 6.54, 0, 0,
  -- Bowling Stats - T20
  72, 32, 496, 28, 17.71, 8.83, 0, 0
);

-- All-rounder 6
INSERT INTO player_info VALUES
('89', 'Mitchell Marsh', 'All-rounder', '1991-10-20', 'Right-handed', 'Right Arm Fast Medium', 'Australia', 'http://localhost:3000/images/Mitchell%20Marsh.jpeg',
  -- Batting Stats - Test
  32, 57, 1264, 26.33, 36.83, 2, 4, 151, 96,
  -- Batting Stats - ODI
  65, 62, 1384, 34.6, 87.18, 2, 4, 99, 89,
  -- Batting Stats - T20
  50, 43, 815, 25.47, 122.88, 0, 3, 50, 55,
  -- Bowling Stats - Test
  32, 53, 1955, 37, 52.84, 3.17, 0, 0,
  -- Bowling Stats - ODI
  65, 53, 1944, 48, 40.5, 5.99, 0, 0,
  -- Bowling Stats - T20
  50, 44, 760, 32, 23.75, 7.95, 0, 0
);

-- All-rounder 7
INSERT INTO player_info VALUES
('90', 'Ashton Agar', 'All-rounder', '1993-10-14', 'Left-handed', 'Left Arm Orthodox', 'Australia', 'http://localhost:3000/images/Ashton%20Agar.jpeg',
  -- Batting Stats - Test
  4, 7, 142, 20.29, 39.11, 0, 1, 19, 35,
  -- Batting Stats - ODI
  16, 10, 82, 13.67, 103.8, 0, 0, 6, 19,
  -- Batting Stats - T20
  35, 20, 118, 19.67, 127.42, 0, 0, 10, 29,
  -- Bowling Stats - Test
  4, 6, 339, 4, 84.75, 2.58, 0, 0,
  -- Bowling Stats - ODI
  16, 16, 651, 13, 50.08, 5.41, 0, 0,
  -- Bowling Stats - T20
  35, 34, 768, 37, 20.75, 6.44, 0, 0
);
-- Pace Bowler 5
INSERT INTO player_info VALUES
('91', 'Jhye Richardson', 'Bowler', '1996-09-20', 'Right-handed', 'Right Arm Fast', 'Australia', 'http://localhost:3000/images/Jhye%20Richardson.jpeg',
  -- Batting Stats - Test
  2, 4, 52, 26, 13, 6.5, 0, 0, 14,
  -- Batting Stats - ODI
  13, 6, 14, 7, 2.33, 2, 0, 0, 6,
  -- Batting Stats - T20
  13, 4, 6, 4, 3, 3, 0, 0, 5,
  -- Bowling Stats - Test
  2, 4, 133, 5, 26.6, 4.44, 0, 0,
  -- Bowling Stats - ODI
  13, 13, 651, 28, 23.25, 5.14, 1, 0,
  -- Bowling Stats - T20
  13, 13, 324, 13, 24.92, 8.74, 0, 0
);

-- Pace Bowler 6
INSERT INTO player_info VALUES
('92', 'Kane Richardson', 'Bowler', '1991-02-12', 'Right-handed', 'Right Arm Fast', 'Australia', 'http://localhost:3000/images/Kane%20Richardson.jpeg',
  -- Batting Stats - Test
  0, 0, 0, 0, 0, 0, 0, 0, 0,
  -- Batting Stats - ODI
  29, 6, 8, 8, 2.67, 2, 0, 0, 4,
  -- Batting Stats - T20
  25, 5, 7, 7, 3.5, 3, 0, 0, 4,
  -- Bowling Stats - Test
  0, 0, 0, 0, 0, 0, 0, 0,
  -- Bowling Stats - ODI
  29, 29, 1433, 47, 30.48, 5.6, 1, 0,
  -- Bowling Stats - T20
  25, 25, 613, 28, 21.89, 8.99, 0, 0
);

-- Pace Bowler 7
INSERT INTO player_info VALUES
('93', 'Josh Hazlewood', 'Bowler', '1991-01-08', 'Left-handed', 'Right Arm Fast', 'Australia', 'http://localhost:3000/images/Josh%20Hazlewood.jpeg',
  -- Batting Stats - Test
  55, 19, 176, 39.2, 14.67, 2, 0, 0, 39,
  -- Batting Stats - ODI
  53, 16, 89, 28, 14.83, 0, 0, 0, 26,
  -- Batting Stats - T20
  13, 3, 11, 11, 3.67, 0, 0, 0, 7,
  -- Bowling Stats - Test
  55, 103, 2199, 212, 25.89, 2.51, 9, 9,
  -- Bowling Stats - ODI
  53, 53, 2532, 80, 31.65, 4.7, 1, 1,
  -- Bowling Stats - T20
  13, 13, 280, 13, 21.54, 6.86, 0, 0
);

-- West Indies Player 1
INSERT INTO player_info VALUES
('43', 'Jason Holder', 'All-Rounder', 'November 5, 1991', 'Right-Handed', 'Right Arm Fast', 'West Indies','http://localhost:3000/images/Jason%20Holder.jpeg',
  -- Batting Stats - Test
  69, 115, 3665, 31.89, 202, 0, 16, 91.96, 4, 18,
  -- Batting Stats - ODI
  123, 98, 2294, 27.14, 99, 0, 13, 96.45, 0, 8,
  -- Batting Stats - T20
  58, 38, 383, 15.95, 31, 0, 1, 124.84, 0, 1,
  -- Bowling Stats - Test
  69, 123, 7038, 122, 5/41, 5/30, 57.62, 3.02,
  -- Bowling Stats - ODI
  123, 116, 5332, 119, 5/27, 5/27, 44.74, 5.66,
  -- Bowling Stats - T20
  58, 52, 942, 53, 4/19, 4/19, 17.77, 8.02
);

-- West Indies Player 2
INSERT INTO player_info VALUES
('44', 'Shai Hope', 'Batsman', 'November 10, 1993', 'Left-Handed', NULL, 'West Indies','http://localhost:3000/images/Shai%20Hope.jpeg',
  -- Batting Stats - Test
  45, 80, 3499, 47.94, 211, 8, 17, 56.02, 9, 16,
  -- Batting Stats - ODI
  78, 78, 3547, 53.03, 170, 10, 17, 74.31, 9, 17,
  -- Batting Stats - T20
  31, 31, 584, 22.46, 58, 0, 3, 123.08, 0, 3,
  -- Bowling Stats - Test
  45, 11, 138, 1, 1/5, 1/5, 138.00, 7.09,
  -- Bowling Stats - ODI
  78, 13, 88, 0, 0/3, 0/3, NULL, 6.38,
  -- Bowling Stats - T20
  31, 1, 2, 0, 0/2, 0/2,NULL, 12.00
);

-- West Indies Player 3
INSERT INTO player_info VALUES
('45', 'Kemar Roach', 'Bowler', 'June 30, 1988', 'Right-Handed', 'Right Arm Fast', 'West Indies','http://localhost:3000/images/Kemar%20Roach.jpeg',
  -- Batting Stats - Test
  67, 87, 655, 8.90, 41, 0, 0, 47.25, 0, 0,
  -- Batting Stats - ODI
  92, 45, 173, 7.95, 19, 0, 0, 48.59, 0, 0,
  -- Batting Stats - T20
  30, 11, 8, 4.00, 4, 0, 0, 57.14, 0, 0,
  -- Bowling Stats - Test
  67, 126, 14758, 386, 8/29, 13/121, 38.23, 2.27,
  -- Bowling Stats - ODI
  92, 91, 4848, 152, 6/27, 6/27, 31.89, 5.68,
  -- Bowling Stats - T20
  30, 30, 648, 30, 4/25, 4/25, 21.60, 8.50
);

-- West Indies Player 4
INSERT INTO player_info VALUES
('46', 'Nicholas Pooran', 'Wk', 'October 2, 1995', 'Left Handed', NULL, 'West Indies','http://localhost:3000/images/Nicholas%20Pooran.jpeg',
  -- Batting Stats - Test
  0, 0, 0, 0.00, 0, 0, 0, 0.00, 0, 0,
  -- Batting Stats - ODI
  35, 35, 1012, 34.89, 118, 0, 3, 110.22, 0, 8,
  -- Batting Stats - T20
  28, 28, 737, 30.71, 58, 0, 4, 144.72, 0, 6,
  -- Bowling Stats - Test
  0, 0, 0, 0, 00, 00, NULL, NULL,
  -- Bowling Stats - ODI
  35, 0, 0, 0, 00, 00, NULL, NULL,
  -- Bowling Stats - T20
  28, 0, 0, 0, 00, 00, NULL, NULL
);

-- West Indies Player 5
INSERT INTO player_info VALUES
('47', 'Shimron Hetmyer', 'Batsman', 'December 26, 1996', 'Right-Handed', NULL, 'West Indies','http://localhost:3000/images/Shimron%20Hetmyer.jpeg',
  -- Batting Stats - Test
  21, 38, 838, 23.27, 93, 0, 5, 48.61, 0, 4,
  -- Batting Stats - ODI
  45, 45, 1430, 35.75, 139, 0, 8, 111.64, 0, 12,
  -- Batting Stats - T20
  31, 31, 516, 20.64, 81, 0, 3, 125.36, 0, 2,
  -- Bowling Stats - Test
  21, 1, 6, 0, 0, 0, NULL, 6.00,
  -- Bowling Stats - ODI
  45, 3, 8, 0, 0, 0, NULL, 2.66,
  -- Bowling Stats - T20
  31, 2, 8, 0, 0, 0, NULL, 4
);
INSERT INTO player_info VALUES
('94', 'Kraigg Brathwaite', 'Batsman', '1992-12-01', 'Right-handed', 'Right arm Off Spin', 'West Indies', 'http://localhost:3000/images/Kraigg%20Brathwaite.jpeg',
  -- Batting Stats - Test
  73, 137, 4163, 33.96, 45.74, 9, 22, 458, 212,
  -- Batting Stats - ODI
  3, 3, 113, 37.67, 72.58, 0, 1, 13, 38,
  -- Batting Stats - T20
  20, 20, 459, 23.95, 119.11, 0, 1, 47, 71,
  -- Bowling Stats - Test
  73, 9, 19, 0, 0, 2.11, 0, 0,
  -- Bowling Stats - ODI
  3, 0, 0, 0, 0, 0, 0, 0,
  -- Bowling Stats - T20
  20, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO player_info VALUES
('95', 'Darren Bravo', 'Batsman', '1989-02-06', 'Left-handed', 'Right Arm Medium', 'West Indies', 'http://localhost:3000/images/Darren%20Bravo.jpeg',
  -- Batting Stats - Test
  56, 101, 3804, 40.91, 44.62, 8, 24, 413, 218,
  -- Batting Stats - ODI
  116, 114, 2977, 28.98, 72.17, 3, 17, 225, 112,
  -- Batting Stats - T20
  29, 29, 474, 18.23, 109.65, 0, 1, 35, 66,
  -- Bowling Stats - Test
  56, 1, 0, 0, 0, 0, 0, 0,
  -- Bowling Stats - ODI
  116, 0, 0, 0, 0, 0, 0, 0,
  -- Bowling Stats - T20
  29, 0, 0, 0, 0, 0, 0, 0
);
INSERT INTO player_info VALUES
('97', 'Roston Chase', 'Batsman', '1992-03-22', 'Right-handed', 'Right Arm Off Spin', 'West Indies', 'http://localhost:3000/images/Roston%20Chase.jpeg',
  -- Batting Stats - Test
  44, 78, 2099, 32.84, 42.17, 4, 10, 250, 137,
  -- Batting Stats - ODI
  30, 27, 775, 28.7, 76.13, 0, 7, 54, 66,
  -- Batting Stats - T20
  20, 19, 427, 26.69, 132.54, 0, 2, 38, 61,
  -- Bowling Stats - Test
  44, 40, 1386, 34, 40.76, 2.16, 0, 0,
  -- Bowling Stats - ODI
  30, 14, 458, 11, 41.64, 5.06, 0, 0,
  -- Bowling Stats - T20
  20, 7, 93, 3, 31, 7.42, 0, 0
);
INSERT INTO player_info 
VALUES 
('98', 'Kieron Pollard', 'All-Rounder', 'May 22, 1987', 'Right-Handed', 'Right Arm Medium', 'West Indies', 'http://localhost:3000/images/Kieron%20Pollard.jpeg',
 -- Batting Stats - Test
 20, 40, 1200, 65.0, 35.0, 1, 10, 120, 25, 150,
 -- Batting Stats - ODI
 150, 280, 8000, 85.0, 40.0, 10, 30, 600, 120, 189,
 -- Batting Stats - T20
 80, 160, 2500, 140.0, 30.0, 0, 15, 120, 35, 95,
 -- Bowling Stats - Test
 15, 30, 800, 40, 20.0, 3.8, 1, 5,
 -- Bowling Stats - ODI
 120, 220, 5000, 150, 30.0, 4.2, 2, 10,
 -- Bowling Stats - T20
 60, 120, 1500, 80, 18.0, 6.0, 0, 5);
 INSERT INTO player_info 
VALUES 
('99', 'Andre Russell', 'All-Rounder', 'April 29, 1988', 'Right-Handed', 'Right Arm Fast', 'West Indies', 'http://localhost:3000/images/Andre%20Russell.jpeg',
 -- Batting Stats - Test
 10, 20, 600, 70.0, 40.0, 0, 5, 80, 15, 110,
 -- Batting Stats - ODI
 90, 160, 4000, 120.0, 35.0, 5, 20, 400, 70, 152,
 -- Batting Stats - T20
 50, 100, 1800, 160.0, 30.0, 1, 10, 90, 30, 75,
 -- Bowling Stats - Test
 8, 16, 500, 25, 18.0, 4.5, 0, 3,
 -- Bowling Stats - ODI
 70, 130, 2500, 100, 28.0, 5.0, 1, 8,
 -- Bowling Stats - T20
 40, 80, 1200, 50, 22.0, 6.0, 0, 4);
INSERT INTO player_info 
VALUES 
('100', 'Dwayne Bravo', 'All-Rounder', 'October 7, 1983', 'Right-Handed', 'Right Arm Fast', 'West Indies', 'http://localhost:3000/images/Dwayne%20Bravo.jpeg',
 -- Batting Stats - Test
 40, 80, 2500, 60.0, 30.0, 2, 15, 200, 40, 150,
 -- Batting Stats - ODI
 160, 300, 6000, 80.0, 35.0, 8, 25, 500, 90, 164,
 -- Batting Stats - T20
 100, 200, 3000, 130.0, 28.0, 1, 20, 150, 50, 78,
 -- Bowling Stats - Test
 25, 50, 1200, 60, 25.0, 3.5, 1, 6,
 -- Bowling Stats - ODI
 130, 240, 4000, 150, 30.0, 4.0, 2, 12,
 -- Bowling Stats - T20
 80, 160, 2000, 100, 20.0, 6.0, 0, 6);
 INSERT INTO player_info 
VALUES 
('101', 'Sunil Narine', 'Bowler', 'May 26, 1988', 'Left-Handed', 'Right Arm Off Spin', 'West Indies', 'http://localhost:3000/images/Sunil%20Narine.jpeg',
 -- Batting Stats - Test
 15, 30, 500, 45.0, 20.0, 0, 2, 40, 5, 75,
 -- Batting Stats - ODI
 80, 140, 1200, 75.0, 20.0, 0, 5, 80, 15, 45,
 -- Batting Stats - T20
 50, 100, 800, 130.0, 18.0, 0, 8, 40, 10, 30,
 -- Bowling Stats - Test
 10, 20, 300, 40, 25.0, 3.2, 0, 2,
 -- Bowling Stats - ODI
 100, 180, 2500, 120, 28.0, 4.0, 1, 10,
 -- Bowling Stats - T20
 60, 120, 1200, 80, 20.0, 6.0, 0, 5);
 INSERT INTO player_info 
VALUES 
('103', 'Sheldon Cottrell', 'Bowler', 'August 19, 1989', 'Right-Handed', 'Left Arm Fast', 'West Indies', 'http://localhost:3000/images/Sheldon%20Cottrell.jpeg',
 -- Batting Stats - Test
 5, 10, 100, 20.0, 10.0, 0, 0, 10, 1, 15,
 -- Batting Stats - ODI
 30, 50, 300, 40.0, 15.0, 0, 1, 20, 2, 10,
 -- Batting Stats - T20
 20, 40, 150, 80.0, 10.0, 0, 0, 5, 1, 5,
 -- Bowling Stats - Test
 8, 16, 400, 15, 18.0, 4.2, 0, 1,
 -- Bowling Stats - ODI
 50, 90, 1000, 40, 22.0, 5.0, 0, 3,
 -- Bowling Stats - T20
 30, 60, 600, 25, 20.0, 6.0, 0, 2);

-- Inserting data for Pacer 2
INSERT INTO player_info 
VALUES 
('104', 'Alzarri Joseph', 'Bowler', 'November 20, 1996', 'Right-Handed', 'Right Arm Fast', 'West Indies', 'http://localhost:3000/images/Alzarri%20Joseph.jpeg',
 -- Batting Stats - Test
 10, 20, 250, 30.0, 12.0, 0, 1, 20, 3, 30,
 -- Batting Stats - ODI
 20, 30, 150, 25.0, 10.0, 0, 0, 10, 1, 8,
 -- Batting Stats - T20
 15, 25, 100, 70.0, 8.0, 0, 0, 5, 1, 5,
 -- Bowling Stats - Test
 12, 24, 450, 18, 22.0, 4.5, 0, 1,
 -- Bowling Stats - ODI
 40, 70, 800, 30, 25.0, 5.0, 0, 2,
 -- Bowling Stats - T20
 25, 40, 500, 20, 20.0, 6.0, 0, 1);
-- Sri Lanka Players

-- Player 1
INSERT INTO player_info VALUES
('48', 'Dimuth Karunaratne', 'Batsman', 'April 21, 1988', 'Left-Handed', NULL, 'Sri Lanka', 'http://localhost:3000/images/Dimuth%20Karunaratne.jpeg',
-- Batting Stats - Test
  70, 140, 5800, 45.60, 42.80, 9, 28, 520, 30, 135,
-- Batting Stats - ODI
  120, 115, 4200, 78.20, 38.50, 7, 20, 380, 25, 105,
-- Batting Stats - T20
  45, 42, 900, 110.50, 22.80, 0, 5, 70, 10, 55,
-- Bowling Stats - Test
  70, 2, 15, NULL, NULL, 7.5, NULL, NULL,
-- Bowling Stats - ODI
  120, 4, 25, NULL, NULL, 6.2, NULL, NULL,
-- Bowling Stats - T20
  45, 1, 8, NULL, NULL, 8.0, NULL, NULL
);

-- Player 2
INSERT INTO player_info VALUES
('49', 'Angelo Mathews', 'All-Rounder', 'June 2, 1987', 'Right-Handed', 'Right Arm Fast', 'Sri Lanka', 'http://localhost:3000/images/Angelo%20Mathews.jpeg',
-- Batting Stats - Test
  80, 150, 6500, 40.20, 35.60, 6, 23, 600, 35, 128,
-- Batting Stats - ODI
  140, 130, 5500, 85.50, 39.80, 4, 30, 450, 40, 112,
-- Batting Stats - T20
  55, 50, 1200, 115.20, 28.10, 1, 8, 90, 15, 65,
-- Bowling Stats - Test
  80, 4, 40, 5, 18.2, 3.2, 1, 0,
-- Bowling Stats - ODI
  140, 8, 55, 12, 25.5, 4.1, 0, 0,
-- Bowling Stats - T20
  55, 2, 15, 4, 11.5, 6.0, 0, 0
);

-- Player 3
INSERT INTO player_info VALUES
('50', 'Kusal Perera', 'Wk', 'August 17, 1990', 'Left-Handed', NULL, 'Sri Lanka', 'http://localhost:3000/images/Kusal%20Perera.jpeg',
-- Batting Stats - Test
  30, 60, 2800, 65.30, 47.60, 5, 18, 320, 20, 112,
-- Batting Stats - ODI
  90, 85, 3600, 95.20, 41.80, 9, 15, 280, 30, 92,
-- Batting Stats - T20
  40, 38, 1100, 130.20, 31.40, 0, 7, 80, 10, 60,
-- Bowling Stats - Test
  30, 1, 5, NULL, NULL, 5.0, NULL, NULL,
-- Bowling Stats - ODI
  90, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
-- Bowling Stats - T20
  40, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);

-- Player 4
INSERT INTO player_info VALUES
('51', 'Dhananjaya de Silva', 'All-Rounder', 'September 6, 1991', 'Right-Handed', 'Right Arm Off Spin', 'Sri Lanka', 'http://localhost:3000/images/Dhananjaya%20de%20Silva.jpeg',
-- Batting Stats - Test
  40, 70, 3100, 42.80, 38.20, 3, 20, 280, 18, 105,
-- Batting Stats - ODI
  80, 75, 2800, 75.60, 35.40, 5, 25, 240, 25, 85,
-- Batting Stats - T20
  35, 32, 900, 110.50, 28.80, 0, 7, 60, 8, 50,
-- Bowling Stats - Test
  40, 3, 18, 2, 8.5, 3.0, 0, 0,
-- Bowling Stats - ODI
  80, 6, 30, 8, 21.5, 4.5, 0, 0,
-- Bowling Stats - T20
  35, 2, 10, 3, 11.0, 6.0, 0, 0
);

-- Player 5
INSERT INTO player_info VALUES
('52', 'Lasith Malinga', 'Bowler', 'August 28, 1983', 'Right-Handed', 'Right Arm Fast', 'Sri Lanka', 'http://localhost:3000/images/Lasith%20Malinga.jpeg',

--batting stats -test
  30, 60, 2800, 65.30, 47.60, 5, 18, 320, 20, 112,

-- Batting Stats - ODI
  200, 54, 550, 105.60, 19.60, 0, 1, 40, 5, 20,
--batting stats -t20
  100, 20, 200, 120.20, 12.00, 0, 0, 20, 2, 10,
-- Bowling Stats - Test
  30, 60, 800, 134, 23.4, 4.2, 0, 0,
-- Bowling Stats - ODI
  250, 200, 3400, 522, 22.8, 5.1, 10, 8,
-- Bowling Stats - T20
  80, 80, 1100, 145, 18.6, 6.5, 2, 1
);
INSERT INTO player_info 
VALUES 
('108', 'Dinesh Chandimal', 'Batsman', 'November 18, 1989', 'Right-Handed', 'Right Arm Off Spin', 'Sri Lanka', 'http://localhost:3000/images/Dinesh%20Chandimal.jpeg',
 -- Batting Stats - Test
 50, 100, 3500, 40.0, 37.0, 4, 20, 320, 30, 164,
 -- Batting Stats - ODI
 70, 120, 2800, 65.0, 38.0, 2, 15, 250, 20, 123,
 -- Batting Stats - T20
 40, 80, 1200, 120.0, 32.0, 0, 8, 80, 15, 75,
 -- Bowling Stats - Test
 15, 30, 400, 8, 40.0, 4.5, 0, 0,
 -- Bowling Stats - ODI
 40, 80, 800, 10, 35.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 25, 50, 300, 5, 25.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('109', 'Kusal Mendis', 'Batsman', 'February 2, 1995', 'Right-Handed', 'Right Arm Off Spin', 'Sri Lanka', 'http://localhost:3000/images/Kusal%20Mendis.jpeg',
 -- Batting Stats - Test
 40, 80, 3200, 45.0, 35.0, 4, 15, 280, 25, 176,
 -- Batting Stats - ODI
 60, 110, 2500, 70.0, 42.0, 3, 12, 220, 18, 123,
 -- Batting Stats - T20
 35, 70, 1000, 130.0, 30.0, 0, 8, 70, 12, 88,
 -- Bowling Stats - Test
 12, 24, 300, 5, 25.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 30, 60, 500, 8, 22.0, 4.5, 0, 0,
 -- Bowling Stats - T20
 20, 40, 200, 3, 18.0, 5.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('110', 'Lahiru Thirimanne', 'Batsman', 'September 8, 1989', 'Left-Handed', 'Right Arm Medium', 'Sri Lanka', 'http://localhost:3000/images/Lahiru%20Thirimanne.jpeg',
 -- Batting Stats - Test
 45, 90, 2800, 35.0, 30.0, 2, 10, 240, 20, 156,
 -- Batting Stats - ODI
 80, 150, 3200, 60.0, 38.0, 2, 18, 280, 22, 115,
 -- Batting Stats - T20
 25, 50, 800, 120.0, 28.0, 0, 5, 60, 10, 55,
 -- Bowling Stats - Test
 15, 30, 350, 5, 30.0, 3.5, 0, 0,
 -- Bowling Stats - ODI
 40, 80, 600, 8, 28.0, 4.0, 0, 0,
 -- Bowling Stats - T20
 20, 40, 150, 2, 15.0, 5.0, 0, 0);
-- South African Players

-- Player 1
INSERT INTO player_info VALUES
('53', 'Quinton de Kock', 'Wk', 'December 17, 1992', 'Left-Handed', NULL, 'South Africa', 'http://localhost:3000/images/Quinton%20de%20Kock.jpeg',
-- Batting Stats - Test
  50, 90, 4200, 75.60, 47.20, 7, 22, 380, 45, 128,
-- Batting Stats - ODI
  120, 115, 5500, 98.20, 43.40, 10, 30, 480, 65, 173,
-- Batting Stats - T20
  70, 65, 1800, 130.50, 30.80, 2, 15, 120, 25, 95,
-- Bowling Stats - Test
  50, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
-- Bowling Stats - ODI
  120, 3, 20, NULL, NULL, 6.7, NULL, NULL,
-- Bowling Stats - T20
  70, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);

-- Player 2
INSERT INTO player_info VALUES
('54', 'Kagiso Rabada', 'Bowler', 'May 25, 1995', 'Right-Handed', 'Right Arm Fast', 'South Africa', 'http://localhost:3000/images/Kagiso%20Rabada.jpeg',
-- Batting Stats - Test
  35, 60, 800, 34.20, 15.80, 0, 2, 45, 10, 22,
-- Batting Stats - ODI
  70, 45, 400, 55.20, 13.30, 0, 1, 30, 5, 18,
-- Batting Stats - T20
  25, 18, 120, 85.50, 12.00, 0, 0, 10, 3, 8,
-- Bowling Stats - Test
  35, 70, 1200, 180, 22.4, 3.5, 2, 1,
-- Bowling Stats - ODI
  70, 120, 2500, 350, 18.6, 5.2, 8, 4,
-- Bowling Stats - T20
  25, 40, 600, 80, 17.2, 6.0, 0, 0
);

-- Player 3
INSERT INTO player_info VALUES
('55', 'Faf du Plessis', 'Batsman', 'July 13, 1984', 'Right-Handed', 'Right Arm Leg Spin', 'South Africa', 'http://localhost:3000/images/Faf%20du%20Plessis.jpeg',
-- Batting Stats - Test
  70, 130, 5500, 45.80, 41.60, 9, 25, 480, 40, 135,
-- Batting Stats - ODI
  120, 115, 4800, 88.20, 39.20, 8, 27, 420, 50, 125,
-- Batting Stats - T20
  55, 50, 1100, 120.30, 30.10, 1, 9, 90, 15, 70,
-- Bowling Stats - Test
  70, 5, 25, 2, 12.5, 2.0, 0, 0,
-- Bowling Stats - ODI
  120, 8, 40, 5, 18.2, 3.5, 0, 0,
-- Bowling Stats - T20
  55, 3, 18, 1, 15.0, 4.0, 0, 0
);

-- Player 4
INSERT INTO player_info VALUES
('56', 'Aiden Markram', 'Batsman', 'October 4, 1994', 'Right-Handed', 'Right Arm Off Spin', 'South Africa', 'http://localhost:3000/images/Aiden%20Markram.jpeg',
-- Batting Stats - Test
  30, 60, 2800, 52.30, 46.80, 6, 18, 320, 25, 112,
-- Batting Stats - ODI
  50, 45, 2000, 92.50, 45.00, 3, 12, 180, 20, 90,
-- Batting Stats - T20
  20, 18, 600, 118.20, 33.30, 0, 4, 50, 8, 35,
-- Bowling Stats - Test
  30, 2, 15, 1, 14.5, 3.0, 0, 0,
-- Bowling Stats - ODI
  50, 3, 20, 2, 18.0, 4.5, 0, 0,
-- Bowling Stats - T20
  20, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);

-- Player 5
INSERT INTO player_info VALUES
('57', 'Lungi Ngidi', 'Bowler', 'March 29, 1996', 'Right-Handed', 'Right Arm Fast', 'South Africa', 'http://localhost:3000/images/Lungi%20Ngidi.jpeg',
-- Batting Stats - Test
  20, 35, 200, 16.80, 8.50, 0, 0, 15, 2, 10,
-- Batting Stats - ODI
  40, 25, 100, 35.20, 7.60, 0, 0, 5, 1, 5,
-- Batting Stats - T20
  15, 10, 50, 80.50, 10.00, 0, 0, 3, 0, 3,
-- Bowling Stats - Test
  20, 40, 700, 95, 23.5, 4.0, 0, 0,
-- Bowling Stats - ODI
  40, 70, 1200, 180, 20.5, 5.0, 1, 0,
-- Bowling Stats - T20
  15, 25, 450, 60, 18.0, 6.0, 0, 0
);
INSERT INTO player_info 
VALUES 
('115', 'Hashim Amla', 'Batsman', 'March 31, 1983', 'Right-Handed', 'Right Arm Off Spin', 'South Africa', 'http://localhost:3000/images/Hashim%20Amla.jpeg',
 -- Batting Stats - Test
 120, 240, 9000, 52.0, 45.0, 27, 41, 700, 60, 311,
 -- Batting Stats - ODI
 180, 320, 8000, 89.0, 50.0, 27, 39, 650, 55, 159,
 -- Batting Stats - T20
 50, 100, 1500, 130.0, 32.0, 1, 12, 120, 15, 97,
 -- Bowling Stats - Test
 10, 20, 200, 2, 18.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 20, 40, 300, 3, 22.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 5, 10, 50, 1, 15.0, 6.0, 0, 0);
INSERT INTO player_info 
VALUES 
('116', 'David Miller', 'Batsman', 'June 10, 1989', 'Left-Handed', 'Right Arm Off Spin', 'South Africa', 'http://localhost:3000/images/David%20Miller.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 120, 200, 4000, 85.0, 42.0, 5, 18, 350, 30, 138,
 -- Batting Stats - T20
 80, 150, 2500, 130.0, 30.0, 1, 15, 180, 25, 95,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 60, 100, 800, 10, 28.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 40, 70, 500, 8, 22.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('117', 'Rassie van der Dussen', 'Batsman', 'February 7, 1989', 'Right-Handed', 'Right Arm Leg Spin', 'South Africa', 'http://localhost:3000/images/Rassie%20van%20der%20Dussen.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 50, 90, 1800, 78.0, 45.0, 2, 12, 160, 20, 90,
 -- Batting Stats - T20
 30, 55, 1200, 140.0, 35.0, 1, 8, 110, 15, 82,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - T20
 0, 0, 0, 0, 0, 0, 0, 0);
 INSERT INTO player_info 
VALUES 
('118', 'Chris Morris', 'All-Rounder', 'April 30, 1987', 'Right-Handed', 'Right Arm Fast', 'South Africa', 'http://localhost:3000/images/Chris%20Morris.jpeg',
 -- Batting Stats - Test
 20, 40, 800, 45.0, 25.0, 0, 5, 80, 12, 62,
 -- Batting Stats - ODI
 60, 110, 2500, 85.0, 35.0, 2, 18, 220, 25, 82,
 -- Batting Stats - T20
 40, 70, 1200, 130.0, 30.0, 0, 10, 100, 15, 58,
 -- Bowling Stats - Test
 15, 30, 500, 8, 30.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 80, 150, 1800, 60, 25.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 50, 90, 700, 40, 22.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('119', 'Andile Phehlukwayo', 'All-Rounder', 'March 3, 1996', 'Left-Handed', 'Right Arm Fast', 'South Africa', 'http://localhost:3000/images/Andile%20Phehlukwayo.jpeg',
 -- Batting Stats - Test
 10, 20, 300, 30.0, 15.0, 0, 2, 30, 5, 28,
 -- Batting Stats - ODI
 50, 90, 1200, 70.0, 30.0, 0, 8, 100, 10, 45,
 -- Batting Stats - T20
 30, 50, 500, 120.0, 20.0, 0, 5, 50, 8, 32,
 -- Bowling Stats - Test
 5, 10, 150, 2, 20.0, 3.5, 0, 0,
 -- Bowling Stats - ODI
 40, 80, 800, 30, 22.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 25, 40, 400, 18, 18.0, 6.0, 0, 0);

-- Inserting data for South African All-Rounder 3
INSERT INTO player_info 
VALUES 
('120', 'Dwaine Pretorius', 'All-Rounder', 'March 29, 1989', 'Right-Handed', 'Right Arm Fast', 'South Africa', 'http://localhost:3000/images/Dwaine%20Pretorius.jpeg',
 -- Batting Stats - Test
 5, 10, 150, 20.0, 15.0, 0, 1, 20, 3, 18,
 -- Batting Stats - ODI
 30, 50, 800, 60.0, 25.0, 0, 5, 80, 10, 42,
 -- Batting Stats - T20
 20, 30, 400, 130.0, 18.0, 0, 4, 40, 5, 26,
 -- Bowling Stats - Test
 5, 10, 100, 2, 22.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 25, 40, 500, 20, 20.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 20, 30, 300, 15, 18.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('121', 'Imran Tahir', 'Bowler', 'March 27, 1979', 'Right-Handed', 'Right Arm Leg Spin', 'South Africa', 'http://localhost:3000/images/Imran%20Tahir.jpeg',
 -- Batting Stats - Test
 20, 30, 400, 18.0, 15.0, 0, 1, 30, 5, 28,
 -- Batting Stats - ODI
 80, 120, 800, 25.0, 10.0, 0, 5, 80, 10, 42,
 -- Batting Stats - T20
 40, 50, 300, 30.0, 12.0, 0, 2, 25, 3, 18,
 -- Bowling Stats - Test
 25, 50, 600, 80, 25.0, 3.5, 0, 0,
 -- Bowling Stats - ODI
 100, 150, 1800, 220, 22.0, 4.5, 0, 0,
 -- Bowling Stats - T20
 60, 80, 800, 120, 18.0, 5.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('122', 'Keshav Maharaj', 'Bowler', 'February 7, 1990', 'Left-Handed', 'Left Arm Orthodox', 'South Africa', 'http://localhost:3000/images/Keshav%20Maharaj.jpeg',
 -- Batting Stats - Test
 30, 60, 800, 25.0, 15.0, 0, 3, 50, 8, 38,
 -- Batting Stats - ODI
 20, 40, 300, 35.0, 18.0, 0, 1, 30, 5, 22,
 -- Batting Stats - T20
 10, 20, 100, 15.0, 12.0, 0, 0, 10, 2, 8,
 -- Bowling Stats - Test
 25, 50, 800, 120, 22.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 20, 40, 400, 40, 25.0, 4.5, 0, 0,
 -- Bowling Stats - T20
 10, 20, 150, 18, 20.0, 5.0, 0, 0);

-- Inserting data for South African Spinner 3
INSERT INTO player_info 
VALUES 
('123', 'Tabraiz Shamsi', 'Bowler', 'February 18, 1990', 'Left-Handed', 'Left Arm Leg Spin', 'South Africa', 'http://localhost:3000/images/Tabraiz%20Shamsi.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 20, 30, 150, 25.0, 10.0, 0, 0, 10, 2, 8,
 -- Batting Stats - T20
 30, 40, 100, 12.0, 8.0, 0, 0, 10, 1, 6,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 30, 40, 200, 15, 18.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 40, 50, 250, 25, 20.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('125', 'Lungi Ngidi', 'Bowler', 'March 29, 1996', 'Right-Handed', 'Right Arm Fast', 'South Africa', 'http://localhost:3000/images/Lungi%20Ngidi.jpeg',
 -- Batting Stats - Test
 20, 30, 300, 25.0, 10.0, 0, 1, 30, 8, 22,
 -- Batting Stats - ODI
 30, 50, 400, 35.0, 18.0, 0, 2, 40, 10, 25,
 -- Batting Stats - T20
 20, 30, 100, 12.0, 8.0, 0, 0, 10, 3, 6,
 -- Bowling Stats - Test
 20, 40, 600, 90, 20.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 40, 70, 800, 120, 22.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 25, 40, 400, 65, 18.0, 6.0, 0, 0);
 -- Inserting data for South African Pacer 3
INSERT INTO player_info 
VALUES 
('126', 'Anrich Nortje', 'Bowler', 'November 16, 1993', 'Right-Handed', 'Right Arm Fast', 'South Africa', 'http://localhost:3000/images/Anrich%20Nortje.jpeg',
 -- Batting Stats - Test
 10, 20, 150, 20.0, 12.0, 0, 1, 20, 4, 16,
 -- Batting Stats - ODI
 20, 40, 200, 18.0, 10.0, 0, 0, 15, 3, 12,
 -- Batting Stats - T20
 15, 25, 100, 12.0, 8.0, 0, 0, 10, 2, 8,
 -- Bowling Stats - Test
 15, 30, 400, 55, 22.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 25, 40, 500, 70, 20.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 20, 30, 250, 40, 18.0, 6.0, 0, 0);

-- Inserting data for South African Pacer 4
INSERT INTO player_info 
VALUES 
('127', 'Dale Steyn', 'Bowler', 'June 27, 1983', 'Right-Handed', 'Right Arm Fast', 'South Africa', 'http://localhost:3000/images/Dale%20Steyn.jpeg',
 -- Batting Stats - Test
 93, 168, 2700, 29.0, 12.0, 1, 5, 200, 20, 76,
 -- Batting Stats - ODI
 125, 180, 1500, 20.0, 10.0, 0, 1, 90, 8, 31,
 -- Batting Stats - T20
 44, 57, 300, 18.0, 8.0, 0, 0, 30, 5, 14,
 -- Bowling Stats - Test
 93, 168, 9000, 439, 22.0, 3.5, 26, 422,
 -- Bowling Stats - ODI
 125, 180, 7000, 439, 25.0, 4.5, 3, 2,
 -- Bowling Stats - T20
 44, 57, 800, 64, 18.0, 6.0, 0, 0);

-- Inserting data for South African Pacer 5
INSERT INTO player_info 
VALUES 
('128', 'Beuran Hendricks', 'Bowler', 'June 8, 1990', 'Left-Handed', 'Left Arm Fast', 'South Africa', 'http://localhost:3000/images/Beuran%20Hendricks.jpeg',
 -- Batting Stats - Test
 5, 10, 80, 15.0, 8.0, 0, 0, 12, 2, 8,
 -- Batting Stats - ODI
 15, 25, 120, 20.0, 10.0, 0, 0, 18, 4, 10,
 -- Batting Stats - T20
 10, 15, 50, 12.0, 6.0, 0, 0, 10, 1, 6,
 -- Bowling Stats - Test
 5, 10, 150, 18, 22.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 20, 35, 250, 28, 22.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 15, 25, 120, 20, 18.0, 6.0, 0, 0);

INSERT INTO player_info VALUES
('58', 'Babar Azam', 'Batsman', 'October 15, 1994', 'Right-Handed', NULL, 'Pakistan', 'http://localhost:3000/images/Babar%20Azam.jpeg',
-- Batting Stats - Test
  30, 60, 2800, 68.20, 52.40, 7, 20, 320, 30, 143,
-- Batting Stats - ODI
  80, 75, 3600, 88.50, 44.60, 10, 35, 450, 55, 158,
-- Batting Stats - T20
  50, 48, 1400, 125.60, 35.80, 1, 12, 110, 18, 90,
-- Bowling Stats - Test
  30, 1, 5, NULL, NULL, 5.0, NULL, NULL,
-- Bowling Stats - ODI
  80, 5, 25, NULL, NULL, 5.5, NULL, NULL,
-- Bowling Stats - T20
  50, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);

-- Player 2
INSERT INTO player_info VALUES
('59', 'Shaheen Afridi', 'Bowler', 'April 6, 2000', 'Left-Handed', 'Left Arm Fast', 'Pakistan', 'http://localhost:3000/images/Shaheen%20Afridi.jpeg',
-- Batting Stats - Test
  20, 35, 300, 18.60, 8.70, 0, 0, 25, 3, 15,
-- Batting Stats - ODI
  40, 25, 150, 35.20, 7.80, 0, 0, 10, 2, 5,
-- Batting Stats - T20
  25, 20, 80, 90.50, 8.00, 0, 0, 5, 1, 4,
-- Bowling Stats - Test
  20, 40, 750, 95, 21.2, 4.1, 0, 0,
-- Bowling Stats - ODI
  40, 70, 1300, 200, 19.5, 5.0, 3, 1,
-- Bowling Stats - T20
  25, 35, 600, 80, 17.6, 6.0, 0, 0
);

-- Player 3
INSERT INTO player_info VALUES
('60', 'Mohammad Rizwan', 'Wk', 'June 1, 1992', 'Right-Handed', NULL, 'Pakistan', 'http://localhost:3000/images/Mohammad%20Rizwan.jpeg',
-- Batting Stats - Test
  25, 50, 1800, 65.80, 40.90, 3, 12, 220, 25, 115,
-- Batting Stats - ODI
  60, 55, 2500, 90.20, 49.40, 5, 20, 320, 35, 158,
-- Batting Stats - T20
  40, 38, 1100, 120.30, 30.40, 1, 8, 90, 15, 70,
-- Bowling Stats - Test
  25, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
-- Bowling Stats - ODI
  60, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
-- Bowling Stats - T20
  40, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);

-- Player 4
INSERT INTO player_info VALUES
('61', 'Fakhar Zaman', 'Batsman', 'April 10, 1990', 'Left-Handed', 'Left Arm Fast', 'Pakistan', 'http://localhost:3000/images/Fakhar%20Zaman.jpeg',
-- Batting Stats - Test
  15, 30, 1200, 45.60, 40.20, 2, 8, 130, 15, 92,
-- Batting Stats - ODI
  50, 45, 2200, 98.50, 50.40, 6, 22, 280, 40, 193,
-- Batting Stats - T20
  30, 28, 900, 120.50, 32.10, 1, 10, 80, 12, 67,
-- Bowling Stats - Test
  15, 2, 8, NULL, NULL, 4.0, NULL, NULL,
-- Bowling Stats - ODI
  50, 3, 15, NULL, NULL, 5.0, NULL, NULL,
-- Bowling Stats - T20
  30, 1, 5, NULL, NULL, 5.0, NULL, NULL
);

-- Player 5
INSERT INTO player_info VALUES
('62', 'Shadab Khan', 'All-Rounder', 'October 4, 1998', 'Right-Handed', 'Right Arm Leg Spin', 'Pakistan', 'http://localhost:3000/images/Shadab%20Khan.jpeg',
-- Batting Stats - Test
  15, 28, 800, 35.60, 28.70, 0, 2, 70, 8, 55,
-- Batting Stats - ODI
  40, 35, 900, 85.40, 30.40, 0, 5, 80, 10, 55,
-- Batting Stats - T20
  25, 22, 400, 120.00, 22.70, 0, 3, 30, 5, 25,
-- Bowling Stats - Test
  15, 3, 18, 2, 9.0, 4.0, 0, 0,
-- Bowling Stats - ODI
  40, 5, 25, 8, 18.5, 5.5, 1, 0,
-- Bowling Stats - T20
  25, 4, 15, 6, 14.0, 6.0, 0, 0
);
-- Inserting data for Pakistani Batsman 1
INSERT INTO player_info 
VALUES 
('129', 'Imam-ul-Haq', 'Batsman', 'December 12, 1995', 'Left-Handed', 'Right Arm Off Spin', 'Pakistan', 'http://localhost:3000/images/Imam-ul-Haq.jpeg',
 -- Batting Stats - Test
 20, 40, 1500, 45.0, 35.0, 5, 8, 180, 20, 132,
 -- Batting Stats - ODI
 50, 80, 2800, 85.0, 40.0, 8, 20, 320, 25, 152,
 -- Batting Stats - T20
 30, 50, 1200, 130.0, 35.0, 2, 10, 150, 18, 95,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 10, 20, 150, 2, 30.0, 4.5, 0, 0,
 -- Bowling Stats - T20
 5, 10, 80, 1, 25.0, 5.0, 0, 0);

-- Inserting data for Pakistani Batsman 2
INSERT INTO player_info 
VALUES 
('130', 'Azhar Ali', 'Batsman', 'February 19, 1985', 'Right-Handed', 'Right Arm Leg Spin', 'Pakistan', 'http://localhost:3000/images/Azhar%20Ali.jpeg',
 -- Batting Stats - Test
 80, 140, 6000, 50.0, 45.0, 15, 30, 420, 40, 226,
 -- Batting Stats - ODI
 50, 80, 2800, 85.0, 40.0, 8, 20, 320, 25, 152,
 -- Batting Stats - T20
 20, 30, 800, 120.0, 30.0, 0, 5, 100, 15, 85,
 -- Bowling Stats - Test
 50, 90, 1200, 30, 40.0, 3.5, 0, 0,
 -- Bowling Stats - ODI
 20, 30, 400, 12, 25.0, 4.0, 0, 0,
 -- Bowling Stats - T20
 10, 15, 100, 3, 18.0, 6.0, 0, 0);

-- Inserting data for Pakistani Batsman 3
INSERT INTO player_info 
VALUES 
('131', 'Haris Sohail', 'Batsman', 'January 9, 1989', 'Left-Handed', 'Left Arm Orthodox', 'Pakistan', 'http://localhost:3000/images/Haris%20Sohail.jpeg',
 -- Batting Stats - Test
 25, 45, 1700, 48.0, 42.0, 3, 10, 160, 22, 147,
 -- Batting Stats - ODI
 40, 70, 2500, 75.0, 35.0, 4, 18, 200, 18, 110,
 -- Batting Stats - T20
 15, 25, 600, 110.0, 28.0, 0, 5, 80, 10, 52,
 -- Bowling Stats - Test
 10, 15, 120, 2, 25.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 30, 40, 300, 5, 30.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 15, 20, 80, 1, 18.0, 6.0, 0, 0);

-- Inserting data for Pakistani Batsman 4
INSERT INTO player_info 
VALUES 
('132', 'Asad Shafiq', 'Batsman', 'January 28, 1986', 'Right-Handed', 'Right Arm Leg Spin', 'Pakistan', 'http://localhost:3000/images/Asad%20Shafiq.jpeg',
 -- Batting Stats - Test
 80, 140, 4500, 42.0, 38.0, 11, 28, 280, 32, 137,
 -- Batting Stats - ODI
 30, 50, 1200, 65.0, 30.0, 0, 10, 120, 15, 78,
 -- Batting Stats - T20
 20, 35, 800, 120.0, 28.0, 0, 5, 90, 12, 55,
 -- Bowling Stats - Test
 10, 20, 200, 1, 40.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 10, 15, 100, 2, 35.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 5, 10, 50, 1, 25.0, 6.0, 0, 0);
-- Inserting data for Pakistani All-Rounder 1
INSERT INTO player_info 
VALUES 
('133', 'Shoaib Malik', 'All-Rounder', 'February 1, 1982', 'Right-Handed', 'Right Arm Off Spin', 'Pakistan', 'http://localhost:3000/images/Shoaib%20Malik.jpeg',
 -- Batting Stats - Test
 40, 70, 1800, 45.0, 35.0, 5, 12, 200, 20, 132,
 -- Batting Stats - ODI
 280, 420, 10000, 80.0, 35.0, 10, 45, 400, 30, 152,
 -- Batting Stats - T20
 120, 180, 3000, 130.0, 30.0, 1, 10, 150, 18, 95,
 -- Bowling Stats - Test
 20, 40, 800, 12, 35.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 180, 280, 4000, 150, 28.0, 5.0, 1, 2,
 -- Bowling Stats - T20
 90, 120, 1200, 80, 22.0, 6.0, 0, 0);

-- Inserting data for Pakistani All-Rounder 2
INSERT INTO player_info 
VALUES 
('134', 'Mohammad Hafeez', 'All-Rounder', 'October 17, 1980', 'Right-Handed', 'Right Arm Off Spin', 'Pakistan', 'http://localhost:3000/images/Mohammad%20Hafeez.jpeg',
 -- Batting Stats - Test
 50, 90, 2500, 45.0, 35.0, 3, 15, 250, 30, 136,
 -- Batting Stats - ODI
 220, 360, 9000, 75.0, 32.0, 12, 40, 300, 22, 152,
 -- Batting Stats - T20
 100, 160, 2500, 130.0, 30.0, 2, 10, 120, 18, 90,
 -- Bowling Stats - Test
 40, 80, 1500, 40, 28.0, 3.0, 0, 0,
 -- Bowling Stats - ODI
 180, 280, 4000, 150, 28.0, 5.0, 1, 2,
 -- Bowling Stats - T20
 90, 120, 1200, 80, 22.0, 6.0, 0, 0);

-- Inserting data for Pakistani All-Rounder 3
INSERT INTO player_info 
VALUES 
('135', 'Faheem Ashraf', 'All-Rounder', 'January 16, 1994', 'Left-Handed', 'Right Arm Fast', 'Pakistan', 'http://localhost:3000/images/Faheem%20Ashraf.jpeg',
 -- Batting Stats - Test
 10, 20, 300, 30.0, 15.0, 0, 3, 50, 5, 38,
 -- Batting Stats - ODI
 40, 70, 1200, 70.0, 30.0, 0, 8, 100, 12, 45,
 -- Batting Stats - T20
 30, 50, 500, 120.0, 20.0, 0, 5, 50, 8, 32,
 -- Bowling Stats - Test
 15, 30, 500, 8, 30.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 80, 150, 1800, 60, 25.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 50, 90, 700, 40, 22.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('136', 'Yasir Shah', 'Bowler', 'May 2, 1986', 'Right-Handed', 'Right Arm Leg Spin', 'Pakistan', 'http://localhost:3000/images/Yasir%20Shah.jpeg',
 -- Batting Stats - Test
 40, 70, 1500, 25.0, 12.0, 0, 5, 150, 10, 42,
 -- Batting Stats - ODI
 20, 30, 300, 15.0, 8.0, 0, 0, 20, 3, 18,
 -- Batting Stats - T20
 15, 25, 100, 10.0, 5.0, 0, 0, 10, 1, 8,
 -- Bowling Stats - Test
 40, 70, 800, 220, 25.0, 3.5, 14, 2,
 -- Bowling Stats - ODI
 20, 30, 500, 60, 18.0, 4.5, 0, 0,
 -- Bowling Stats - T20
 15, 25, 200, 25, 22.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('138', 'Usman Qadir', 'Bowler', 'August 12, 1993', 'Right-Handed', 'Right Arm Leg Spin', 'Pakistan', 'http://localhost:3000/images/Usman%20Qadir.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 10, 20, 150, 20.0, 12.0, 0, 0, 15, 2, 8,
 -- Batting Stats - T20
 20, 30, 100, 12.0, 8.0, 0, 0, 10, 1, 6,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 20, 30, 200, 15, 18.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 30, 40, 250, 25, 20.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('140', 'Hasan Ali', 'Bowler', 'July 7, 1994', 'Right-Handed', 'Right Arm Fast', 'Pakistan', 'http://localhost:3000/images/Hasan%20Ali.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 30, 40, 300, 15.0, 8.0, 0, 0, 20, 3, 18,
 -- Batting Stats - T20
 20, 25, 150, 20.0, 10.0, 0, 0, 15, 2, 12,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 40, 60, 800, 150, 22.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 25, 40, 400, 65, 18.0, 6.0, 0, 0);

-- Inserting data for Pakistani Pacer 3
INSERT INTO player_info 
VALUES 
('141', 'Mohammad Hasnain', 'Bowler', 'April 5, 2000', 'Right-Handed', 'Right Arm Fast', 'Pakistan', 'http://localhost:3000/images/Mohammad%20Hasnain.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 15, 25, 80, 8.0, 6.0, 0, 0, 10, 1, 6,
 -- Batting Stats - T20
 10, 15, 50, 10.0, 5.0, 0, 0, 10, 1, 5,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 20, 30, 250, 35, 20.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 15, 20, 120, 20, 18.0, 6.0, 0, 0);
-- Inserting data for Pakistani Pacer 4
INSERT INTO player_info 
VALUES 
('142', 'Muhammad Abbas', 'Bowler', 'August 10, 1989', 'Right-Handed', 'Right Arm Fast', 'Pakistan', 'http://localhost:3000/images/Muhammad%20Abbas.jpeg',
 -- Batting Stats - Test
 35, 60, 800, 20.0, 15.0, 0, 0, 60, 7, 29,
 -- Batting Stats - ODI
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - T20
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - Test
 35, 60, 1500, 85, 18.0, 2.5, 1, 0,
 -- Bowling Stats - ODI
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - T20
 0, 0, 0, 0, 0, 0, 0, 0);

-- Inserting data for Pakistani Pacer 5
INSERT INTO player_info 
VALUES 
('143', 'Naseem Shah', 'Bowler', 'February 15, 2003', 'Right-Handed', 'Right Arm Fast', 'Pakistan', 'http://localhost:3000/images/Naseem%20Shah.jpeg',
 -- Batting Stats - Test
 10, 15, 100, 12.0, 8.0, 0, 0, 25, 3, 15,
 -- Batting Stats - ODI
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - T20
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - Test
 10, 15, 300, 20, 15.0, 2.0, 0, 0,
 -- Bowling Stats - ODI
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - T20
 0, 0, 0, 0, 0, 0, 0, 0);

-- Afghan Players
-- Player 1
INSERT INTO player_info VALUES
('68', 'Rashid Khan', 'Bowler', 'September 20, 1998', 'Right-Handed', 'Right Arm Leg Spin', 'Afghanistan', 'http://localhost:3000/images/Rashid%20Khan.jpeg',
-- Batting Stats - Test
  15, 25, 589, 37.72, 23.45, 0, 2, 57, 14, 49,
-- Batting Stats - ODI
  47, 39, 997, 88.99, 27.85, 0, 2, 79, 17, 64,
-- Batting Stats - T20
  29, 19, 345, 121.67, 22.31, 0, 1, 28, 9, 22,
-- Bowling Stats - Test
  14, 29, 697, 79, 7.9, 2.8, 0, 0,
-- Bowling Stats - ODI
  47, 86, 1789, 219, 18.4, 4.3, 2, 1,
-- Bowling Stats - T20
  29, 48, 893, 116, 16.2, 5.8, 0, 0
);

-- Player 2
INSERT INTO player_info VALUES
('69', 'Mohammad Nabi', 'All-Rounder', 'January 1, 1985', 'Right-Handed', 'Right Arm Off Spin', 'Afghanistan', 'http://localhost:3000/images/Mohammad%20Nabi.jpeg',
-- Batting Stats - Test
  25, 40, 1189, 35.69, 28.87, 2, 9, 118, 19, 87,
-- Batting Stats - ODI
  78, 74, 2798, 75.47, 38.45, 4, 29, 334, 39, 115,
-- Batting Stats - T20
  39, 37, 899, 109.99, 26.43, 0, 8, 79, 14, 63,
-- Bowling Stats - Test
  24, 2, 17, 2, 11.5, 3.9, 0, 0,
-- Bowling Stats - ODI
  78, 11, 42, 7, 19.3, 3.9, 1, 0,
-- Bowling Stats - T20
  39, 14, 67, 11, 17.9, 5.7, 0, 0
);

-- Player 3
INSERT INTO player_info VALUES
('70', 'Hazratullah Zazai', 'Batsman', 'March 23, 1998', 'Left-Handed', NULL, 'Afghanistan', 'http://localhost:3000/images/Hazratullah%20Zazai.jpeg',
-- Batting Stats - Test
  20, 39, 1278, 48.79, 45.23, 4, 15, 138, 23, 96,
-- Batting Stats - ODI
  54, 51, 1492, 93.71, 41.26, 3, 25, 178, 32, 124,
-- Batting Stats - T20
  35, 33, 998, 134.68, 32.45, 1, 11, 102, 16, 77,
-- Bowling Stats - Test
  20, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
-- Bowling Stats - ODI
  54, 3, 19, 1, 18.0, 6.3, 0, 0,
-- Bowling Stats - T20
  35, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);

-- Player 4
INSERT INTO player_info VALUES
('71', 'Asghar Afghan', 'Batsman', 'February 27, 1987', 'Right-Handed', NULL, 'Afghanistan', 'http://localhost:3000/images/Asghar%20Afghan.jpeg',
-- Batting Stats - Test
  15, 30, 879, 45.67, 41.26, 2, 12, 92, 18, 67,
-- Batting Stats - ODI
  62, 57, 1687, 79.38, 35.74, 1, 20, 132, 26, 97,
-- Batting Stats - T20
  40, 37, 1098, 120.78, 33.97, 0, 6, 78, 14, 58,
-- Bowling Stats - Test
  15, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
-- Bowling Stats - ODI
  62, 2, 15, 1, 15.0, 5.0, 0, 0,
-- Bowling Stats - T20
  40, 1, 6, 0, 6.0, 6.0, 0, 0
);

-- Player 5
INSERT INTO player_info VALUES
('72', 'Najibullah Zadran', 'Batsman', 'February 1, 1993', 'Left-Handed', NULL, 'Afghanistan', 'http://localhost:3000/images/Najibullah%20Zadran.jpeg',
-- Batting Stats - Test
  10, 20, 789, 41.52, 39.68, 1, 8, 68, 14, 54,
-- Batting Stats - ODI
  47, 42, 1245, 95.26, 31.52, 0, 10, 108, 20, 78,
-- Batting Stats - T20
  32, 30, 890, 136.78, 36.21, 0, 5, 82, 13, 63,
-- Bowling Stats - Test
  10, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
-- Bowling Stats - ODI
  47, 1, 5, 0, 5.0, 5.0, 0, 0,
-- Bowling Stats - T20
  32, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);
INSERT INTO player_info 
VALUES 
('151', 'Gulbadin Naib', 'All-Rounder', 'March 16, 1991', 'Right-Handed', 'Right Arm Fast', 'Afghanistan', 'http://localhost:3000/images/Gulbadin%20Naib.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 60, 100, 2500, 30.0, 25.0, 0, 10, 110, 15, 78,
 -- Batting Stats - T20
 40, 60, 1200, 150.0, 30.0, 1, 12, 120, 20, 92,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 80, 120, 1500, 50, 22.0, 4.0, 0, 0,
 -- Bowling Stats - T20
 50, 80, 800, 60, 20.0, 5.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('154', 'Mujeeb Ur Rahman', 'All-Rounder', 'March 28, 2001', 'Right-Handed', 'Right Arm Off Spin', 'Afghanistan', 'http://localhost:3000/images/Mujeeb%20Ur%20Rahman.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 30, 40, 200, 15.0, 8.0, 0, 0, 20, 2, 10,
 -- Batting Stats - T20
 20, 30, 100, 12.0, 6.0, 0, 0, 10, 1, 5,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 40, 60, 800, 30, 20.0, 4.0, 0, 0,
 -- Bowling Stats - T20
 30, 50, 400, 25, 18.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('157', 'Hamid Hassan', 'Bowler', 'June 1, 1987', 'Right-Handed', 'Right Arm Fast', 'Afghanistan', 'http://localhost:3000/images/Hamid%20Hassan.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 40, 60, 200, 12.0, 6.0, 0, 0, 15, 2, 8,
 -- Batting Stats - T20
 25, 40, 100, 8.0, 4.0, 0, 0, 8, 1, 5,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 50, 80, 500, 70, 22.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 30, 45, 250, 35, 18.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('159', 'Karim Janat', 'Bowler', 'September 4, 1997', 'Right-Handed', 'Right Arm Fast', 'Afghanistan', 'http://localhost:3000/images/Karim%20Janat.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 15, 25, 400, 25.0, 20.0, 0, 2, 45, 5, 28,
 -- Batting Stats - T20
 10, 15, 200, 40.0, 25.0, 0, 1, 35, 4, 18,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 20, 30, 200, 3, 25.0, 4.0, 0, 0,
 -- Bowling Stats - T20
 15, 25, 100, 1, 22.0, 5.0, 0, 0);
 -- Inserting data for Afghan Player 6 (Nur Ahmad)
INSERT INTO player_info 
VALUES 
('161', 'Nur Ahmad', 'Batsman', 'April 2, 1998', 'Left-Handed', 'Left Arm Leg Spin', 'Afghanistan', 'http://localhost:3000/images/Nur%20Ahmad.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 10, 15, 250, 18.0, 12.0, 0, 2, 35, 5, 22,
 -- Batting Stats - T20
 15, 20, 350, 120.0, 30.0, 0, 4, 55, 8, 42,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 5, 10, 40, 1, 30.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 10, 15, 80, 2, 25.0, 6.0, 0, 0);
INSERT INTO player_info 
VALUES 
('162', 'Rahmanullah Gurbaz', 'Wk', 'June 6, 2002', 'Right-Handed', NULL, 'Afghanistan', 'http://localhost:3000/images/Rahmanullah%20Gurbaz.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 15, 20, 800, 60.0, 45.0, 0, 6, 120, 18, 92,
 -- Batting Stats - T20
 20, 30, 1200, 160.0, 40.0, 2, 15, 130, 22, 108,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 5, 10, 20, 1, 25.0, 4.0, 0, 0,
 -- Bowling Stats - T20
 10, 15, 30, 1, 22.0, 5.0, 0, 0);
 ----eng players 
 INSERT INTO player_info 
VALUES 
('163', 'Joe Root', 'Batsman', 'December 30, 1990', 'Right-Handed', 'Right Arm Off Spin', 'England', 'http://localhost:3000/images/Joe%20Root.jpeg',
 -- Batting Stats - Test
 100, 180, 9000, 55.0, 50.0, 25, 45, 1200, 120, 254,
 -- Batting Stats - ODI
 150, 200, 8000, 85.0, 60.0, 30, 40, 900, 50, 133,
 -- Batting Stats - T20
 50, 60, 1200, 150.0, 40.0, 2, 15, 150, 25, 108,
 -- Bowling Stats - Test
 70, 120, 1500, 30, 28.0, 3.0, 0, 0,
 -- Bowling Stats - ODI
 80, 140, 1200, 25, 22.0, 4.5, 0, 0,
 -- Bowling Stats - T20
 40, 60, 500, 20, 18.0, 6.0, 0, 0);
INSERT INTO player_info 
VALUES 
('164', 'Ben Stokes', 'Batsman', 'June 4, 1991', 'Left-Handed', 'Right Arm Fast', 'England', 'http://localhost:3000/images/Ben%20Stokes.jpeg',
 -- Batting Stats - Test
 80, 140, 6000, 50.0, 40.0, 15, 30, 800, 80, 176,
 -- Batting Stats - ODI
 100, 150, 4000, 35.0, 28.0, 10, 20, 400, 25, 125,
 -- Batting Stats - T20
 40, 50, 800, 120.0, 30.0, 1, 10, 110, 18, 78,
 -- Bowling Stats - Test
 60, 100, 1200, 40, 25.0, 5.0, 1, 3,
 -- Bowling Stats - ODI
 80, 120, 1500, 50, 22.0, 4.0, 0, 0,
 -- Bowling Stats - T20
 50, 80, 800, 35, 18.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('165', 'Jonny Bairstow', 'Wk', 'September 26, 1989', 'Right-Handed', NULL, 'England', 'http://localhost:3000/images/Jonny%20Bairstow.jpeg',
 -- Batting Stats - Test
 70, 120, 4500, 40.0, 35.0, 12, 20, 600, 60, 167,
 -- Batting Stats - ODI
 120, 180, 5500, 45.0, 38.0, 16, 28, 700, 40, 141,
 -- Batting Stats - T20
 50, 70, 1000, 130.0, 28.0, 1, 10, 120, 15, 92,
 -- Bowling Stats - Test
 10, 20, 200, 2, 20.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 10, 15, 80, 1, 25.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 5, 10, 40, 0, 0, 0, 0, 0);
 INSERT INTO player_info 
VALUES 
('166', 'Jos Buttler', 'Wk', 'September 8, 1990', 'Right-Handed', NULL, 'England', 'http://localhost:3000/images/Jos%20Buttler.jpeg',
 -- Batting Stats - Test
 50, 80, 3000, 35.0, 30.0, 8, 15, 400, 40, 152,
 -- Batting Stats - ODI
 120, 170, 6000, 45.0, 40.0, 10, 30, 800, 50, 150,
 -- Batting Stats - T20
 60, 90, 1500, 140.0, 35.0, 1, 15, 130, 20, 110,
 -- Bowling Stats - Test
 10, 15, 120, 1, 35.0, 6.0, 0, 0,
 -- Bowling Stats - ODI
 20, 30, 180, 3, 28.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 15, 20, 100, 2, 20.0, 4.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('167', 'Jason Roy', 'Batsman', 'July 21, 1990', 'Right-Handed', 'Right Arm Medium', 'England', 'http://localhost:3000/images/Jason%20Roy.jpeg',
 -- Batting Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 -- Batting Stats - ODI
 70, 110, 3000, 35.0, 30.0, 5, 25, 300, 15, 180,
 -- Batting Stats - T20
 50, 80, 2000, 140.0, 35.0, 3, 20, 180, 25, 128,
 -- Bowling Stats - Test
 0, 0, 0, 0, 0, 0, 0, 0,
 -- Bowling Stats - ODI
 10, 15, 100, 2, 28.0, 5.0, 0, 0,
 -- Bowling Stats - T20
 5, 10, 50, 1, 22.0, 4.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('168', 'Moeen Ali', 'All-Rounder', 'June 18, 1987', 'Left-Handed', 'Right Arm Off Spin', 'England', 'http://localhost:3000/images/Moeen%20Ali.jpeg',
 -- Batting Stats - Test
 60, 90, 2000, 30.0, 25.0, 5, 10, 220, 40, 87,
 -- Batting Stats - ODI
 100, 140, 3500, 40.0, 35.0, 5, 25, 300, 20, 128,
 -- Batting Stats - T20
 50, 70, 1200, 130.0, 30.0, 1, 10, 110, 18, 92,
 -- Bowling Stats - Test
 70, 120, 2500, 90, 30.0, 3.0, 0, 0,
 -- Bowling Stats - ODI
 120, 170, 2000, 50, 25.0, 4.5, 0, 0,
 -- Bowling Stats - T20
 80, 110, 800, 30, 20.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('169', 'Chris Woakes', 'All-Rounder', 'March 2, 1989', 'Right-Handed', 'Right Arm Fast', 'England', 'http://localhost:3000/images/Chris%20Woakes.jpeg',
 -- Batting Stats - Test
 50, 80, 1000, 20.0, 15.0, 0, 5, 80, 10, 58,
 -- Batting Stats - ODI
 80, 120, 1500, 25.0, 18.0, 0, 5, 100, 8, 65,
 -- Batting Stats - T20
 40, 60, 500, 25.0, 20.0, 0, 2, 50, 5, 30,
 -- Bowling Stats - Test
 70, 120, 2500, 90, 28.0, 3.0, 0, 0,
 -- Bowling Stats - ODI
 120, 170, 2000, 60, 22.0, 4.0, 0, 0,
 -- Bowling Stats - T20
 50, 70, 800, 30, 18.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('170', 'Sam Curran', 'All-Rounder', 'June 3, 1998', 'Left-Handed', 'Left Arm Fast', 'England', 'http://localhost:3000/images/Sam%20Curran.jpeg',
 -- Batting Stats - Test
 30, 50, 800, 25.0, 20.0, 0, 5, 60, 10, 46,
 -- Batting Stats - ODI
 40, 60, 500, 30.0, 25.0, 0, 2, 40, 5, 32,
 -- Batting Stats - T20
 20, 30, 300, 150.0, 30.0, 0, 2, 30, 5, 18,
 -- Bowling Stats - Test
 20, 30, 600, 20, 25.0, 4.0, 0, 0,
 -- Bowling Stats - ODI
 30, 50, 800, 30, 22.0, 4.0, 0, 0,
 -- Bowling Stats - T20
 20, 30, 400, 25, 18.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('171', 'Stuart Broad', 'All-Rounder', 'June 24, 1986', 'Left-Handed', 'Right Arm Fast', 'England', 'http://localhost:3000/images/Stuart%20Broad.jpeg',
 -- Batting Stats - Test
 140, 220, 3000, 20.0, 15.0, 0, 5, 80, 10, 58,
 -- Batting Stats - ODI
 60, 80, 800, 18.0, 12.0, 0, 2, 40, 5, 32,
 -- Batting Stats - T20
 30, 40, 400, 30.0, 25.0, 0, 2, 30, 5, 18,
 -- Bowling Stats - Test
 150, 240, 6000, 450, 20.0, 3.0, 1, 3,
 -- Bowling Stats - ODI
 80, 120, 1500, 60, 22.0, 4.0, 0, 0,
 -- Bowling Stats - T20
 40, 60, 800, 35, 18.0, 6.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('172', 'Jofra Archer', 'Bowler', 'April 1, 1995', 'Right-Handed', 'Right Arm Fast', 'England', 'http://localhost:3000/images/Jofra%20Archer.jpeg',
 -- Batting Stats - Test
 15, 25, 400, 20.0, 15.0, 0, 2, 40, 4, 25,
 -- Bowling Stats - Test
 15, 30, 600, 30, 22.0, 3.0, 1, 2,
 -- Batting Stats - ODI
 25, 40, 800, 30.0, 20.0, 0, 3, 45, 5, 30,
 -- Bowling Stats - ODI
 30, 50, 900, 50, 18.0, 4.0, 2, 3,
 -- Batting Stats - T20
 10, 15, 200, 25.0, 15.0, 0, 1, 30, 2, 18,
 -- Bowling Stats - T20
 15, 25, 450, 25, 20.0, 7.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('173', 'Mark Wood', 'Bowler', 'January 11, 1990', 'Right-Handed', 'Right Arm Fast', 'England', 'http://localhost:3000/images/Mark%20Wood.jpeg',
 -- Batting Stats - Test
 20, 30, 400, 18.0, 10.0, 0, 2, 40, 3, 28,
 -- Bowling Stats - Test
 20, 40, 800, 50, 25.0, 3.0, 2, 3,
 -- Batting Stats - ODI
 50, 70, 1000, 20.0, 15.0, 0, 1, 30, 4, 18,
 -- Bowling Stats - ODI
 70, 120, 2000, 120, 22.0, 5.0, 4, 5,
 -- Batting Stats - T20
 15, 25, 200, 15.0, 10.0, 0, 0, 20, 2, 15,
 -- Bowling Stats - T20
 25, 35, 600, 30, 18.0, 7.0, 0, 0);
 INSERT INTO player_info 
VALUES 
('174', 'Adil Rashid', 'Bowler', 'February 17, 1988', 'Right-Handed', 'Right Arm Leg Spin', 'England', 'http://localhost:3000/images/Adil%20Rashid.jpeg',
 -- Batting Stats - Test
 20, 30, 500, 20.0, 15.0, 0, 2, 40, 3, 28,
 -- Bowling Stats - Test
 20, 40, 800, 40, 22.0, 3.5, 2, 3,
 -- Batting Stats - ODI
 80, 120, 1200, 18.0, 12.0, 0, 1, 35, 4, 20,
 -- Bowling Stats - ODI
 100, 150, 2500, 120, 18.0, 4.0, 2, 4,
 -- Batting Stats - T20
 25, 35, 400, 25.0, 15.0, 0, 0, 25, 2, 15,
 -- Bowling Stats - T20
 40, 60, 900, 60, 20.0, 7.0, 0, 0);
 
----------------from here i have filter and modify.......................................................................
-------------------------------------------------------------------
------------------------------
------------
------
----
--
-
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

---------------------------------------------------------






