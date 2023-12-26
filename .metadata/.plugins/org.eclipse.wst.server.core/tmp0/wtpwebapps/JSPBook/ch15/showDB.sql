-- 데이터베이스 조회
show databases;

-- 데이터베이스 생성
create database JSPBookDB default character set utf8 collate utf8_general_ci;

-- 데이터베이스 사용
use JSPBookDB;

-- 테이블 생성
create table member(
	id int not null auto_increment,
	name varchar(100) not null,
	passwd varchar(60) not null,
	primary key(id)
);

-- 테이블 조회
show tables;

-- 테이블 상세조회
desc student;

-- 테이블 이름 변경
rename table member to student;

-- 데이터 등록
insert into student values('1', '홍길동', '1234');

-- 데이터 조회
select * from student;