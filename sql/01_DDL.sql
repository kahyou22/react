-- 스키마(DB) 생성
CREATE SCHEMA `mydb` DEFAULT CHARACTER SET utf8mb4 ;

-- 스키마 사용
USE mydb;

-- 스키마 삭제
DROP SCHEMA basic;

-- 1. 회원 정보를 저장하는 member 테이블을 생성하시오.
CREATE TABLE member (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    gender CHAR(1),
    regdate DATE
);

-- 2. 이름(product_name)은 필수 입력인 product 테이블을 생성하시오.
CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price INT
);

-- 3. 조회수(view_cnt) 기본값이 0인 board 테이블을 생성하시오.
CREATE TABLE board (
	board_no INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200),
	view_cnt INT DEFAULT 0
);

-- 4. 이메일(email)이 중복되지 않는 user 테이블을 생성하시오.
CREATE TABLE user (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(100) UNIQUE,
    password VARCHAR(100)
);

-- 5. 주문 테이블을 생성하고 회원 테이블을 참조하도록 설정하시오.
CREATE TABLE orders (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
	member_id INT,
    order_date DATE,
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);

-- 6. member 테이블에 phone 컬럼을 추가하시오.
ALTER TABLE member ADD phone VARCHAR(20);

-- 7. member 테이블의 name 컬럼 길이를 100으로 변경하시오.
ALTER TABLE member MODIFY name VARCHAR(100);

-- 8. member 테이블의 phone 컬럼명을 mobile로 변경하시오.
ALTER TABLE member CHANGE phone mobile VARCHAR(20);
ALTER TABLE member RENAME COLUMN phone TO mobile;

-- 9. member 테이블에서 age 컬럼을 삭제하시오.
ALTER TABLE member DROP COLUMN age;

-- 10. member 테이블의 email 컬럼에 UNIQUE 제약조건을 추가하시오.
ALTER TABLE member ADD email VARCHAR(100) UNIQUE;
ALTER TABLE member ADD UNIQUE (email);

-- 11. email UNIQUE 제약조건을 삭제하시오.
ALTER TABLE member DROP INDEX email;

-- 12. member 테이블 이름을 customer로 변경하시오.
ALTER TABLE member RENAME TO customer;
RENAME TABLE member TO customer;

-- RENAME TABLE customer TO member;

-- 13. product 테이블을 삭제하시오.
DROP TABLE product;

-- 14. board 테이블의 모든 데이터를 삭제하시오.
DELETE FROM board;
TRUNCATE TABLE board;

-- 15. member 테이블 구조와 데이터를 복사하여 member_backup 테이블을 생성하시오.
CREATE TABLE member_backup AS SELECT * FROM member;

-- 트렌젝션
CREATE TABLE test (
	id INT PRIMARY KEY,
    name VARCHAR(30)
) ENGINE=InnoDB;

INSERT INTO test VALUES (1, 'A'), (2, 'B'), (3, 'C');

-- 세이프 모드 해제/설정
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

-- 트렌젝션 시작
START TRANSACTION;

-- 데이터 삭제
DELETE FROM test;
TRUNCATE TABLE test;

-- 데이터 확인
SELECT * FROM test;

-- 트렌젝션 종료
COMMIT;
ROLLBACK;