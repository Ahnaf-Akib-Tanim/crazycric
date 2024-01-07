
drop table cricket_board;
create TABLE cricket_board
(
board_name VARCHAR, 
board_president VARCHAR,
country_name VARCHAR,
located varchar,
abbreviation varchar,
CONSTRAINT cricket_board_pk PRIMARY key(board_name)
);
insert into cricket_board values('Bangladesh Cricket Board','Najmul Hossain Papon','Bangladesh','Dhaka','BCB');