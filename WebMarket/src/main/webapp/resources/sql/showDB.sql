-- 데이터베이스 조회
show databases;

-- 데이터베이스 사용
use webmarketdb;

-- 테이블 조회
show tables;

-- 테이블 상세조회
desc product;

-- 테이블 데이터 조회
select * from product;
select * from product where p_id='P1236';

-- 데이터 변경
update product set p_fileName='P1236.jpg' where p_id='P1236';

-- 데이터 삭제
delete from product where p_id='P1237';
delete from student where id='1';

-- 테이블 속성 값 변경
alter table product modify column p_name VARCHAR(20);