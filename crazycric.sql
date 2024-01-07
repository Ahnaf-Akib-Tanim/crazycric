drop table cricket_board;
create TABLE cricket_board
(
board_name VARCHAR not NULL, 
board_president VARCHAR not NULL,
country_name VARCHAR not NULL,
located varchar not NULL,
abbreviation varchar not NULL,
image bytea not null,
CONSTRAINT cricket_board_pk PRIMARY key(board_name)
);
insert into cricket_board values('Bangladesh Cricket Board','Najmul Hossain Papon','Bangladesh','Dhaka','BCB',pg_read_binary_file('D:\Buet\Crazycric-project\cricketboard_images\bd.png'));
insert into cricket_board values('Board of Control for Cricket in India','Rojer Binny','India','Mumbai','BCCI',pg_read_binary_file('D:\Buet\Crazycric-project\cricketboard_images\ind.png'));
insert into cricket_board values('England and Wales Cricket Board','Richard Thompson','England','London','ECB',pg_read_binary_file('D:\Buet\Crazycric-project\cricketboard_images\eng.png'));
insert into cricket_board values('Cricket Australia','Mike Baird','Australia','Melbourne','CA',pg_read_binary_file('D:\Buet\Crazycric-project\cricketboard_images\aus.png'));
insert into cricket_board values('Cricket South Africa','Rihan Richards','South Africa','	Johannesburg','CSA',pg_read_binary_file('D:\Buet\Crazycric-project\cricketboard_images\sa.png'));
insert into cricket_board values('Cricket West Indies','Dr. Kishore Shallow','West Indies','Antigua and Barbuda','CWI',pg_read_binary_file('D:\Buet\Crazycric-project\cricketboard_images\wi.png'));
insert into cricket_board values('New Zealand Cricket','Debbie Hockley','New Zealand','	Christchurch','NZC',pg_read_binary_file('D:\Buet\Crazycric-project\cricketboard_images\nz.png'));
insert into cricket_board values(' Pakistan Cricket Board','Zaka Ashraf','Pakistan',' Ferozepur','PCB',pg_read_binary_file('D:\Buet\Crazycric-project\cricketboard_images\pak.png'));
insert into cricket_board values('Afghanistan Cricket Board','	Mirwais Ashraf','Afghanistan','Kabul','ACB',pg_read_binary_file('D:\Buet\Crazycric-project\cricketboard_images\afg.png'));
insert into cricket_board values('Srilanka Cricket Board','Shammi Silva','Srilanka','Colombo','SLC',pg_read_binary_file('D:\Buet\Crazycric-project\cricketboard_images\sl.png'));
select*
from cricket_board
