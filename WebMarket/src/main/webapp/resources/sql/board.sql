CREATE TABLE board (
	num INT NOT NULL AUTO_INCREMENT,
	id VARCHAR(10) NOT NULL,
	name VARCHAR(10) NOT NULL,
	subject VARCHAR(100) NOT NULL,
	content TEXT NOT NULL,
	regist_day VARCHAR(30),
	hit INT,
	ip VARCHAR(20),
	PRIMARY KEY (num)
) DEFAULT CHARSET=utf8;
