drop table cricket_board;
create TABLE cricket_board
(
board_name VARCHAR not NULL, 
board_president VARCHAR not NULL,
country_name VARCHAR not NULL,
located varchar not NULL,
abbreviation varchar not NULL,
CONSTRAINT cricket_board_pk PRIMARY key(board_name)
);
insert into cricket_board values('Bangladesh Cricket Board','Najmul Hossain Papon','Bangladesh','Dhaka','BCB');
insert into cricket_board values('Board of Control for Cricket in India','Rojer Binny','India','Mumbai','BCCI');
insert into cricket_board values('England and Wales Cricket Board','Richard Thompson','England','London','ECB');
insert into cricket_board values('Cricket Australia','Mike Baird','Australia','Melbourne','CA');
insert into cricket_board values('Cricket South Africa','Rihan Richards','South Africa','	Johannesburg','CSA');
insert into cricket_board values('Cricket West Indies','Dr. Kishore Shallow','West Indies','Antigua and Barbuda','CWI');
insert into cricket_board values('New Zealand Cricket','Debbie Hockley','New Zealand','	Christchurch','NZC');
insert into cricket_board values(' Pakistan Cricket Board','Zaka Ashraf','Pakistan',' Ferozepur','PCB');
insert into cricket_board values('Afghanistan Cricket Board','	Mirwais Ashraf','Afghanistan','Kabul','ACB');
insert into cricket_board values('Srilanka Cricket Board','Shammi Silva','Srilanka','Colombo','SLC');
