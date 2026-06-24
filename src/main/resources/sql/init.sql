CREATE TABLE member (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    email VARCHAR(256) NOT NULL UNIQUE,
    age INTEGER
);

CREATE TABLE article (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(256),
    description VARCHAR(4096),
    created TIMESTAMP,
    updated TIMESTAMP,
    member_id INTEGER,
    FOREIGN KEY(member_id) REFERENCES member(id) ON DELETE CASCADE
);

INSERT INTO MEMBER(NAME, EMAIL, AGE)
VALUES( '윤서준', 'SeojunYoon@hanbit.co.kr', 10);
INSERT INTO MEMBER(NAME, EMAIL, AGE)
VALUES( '윤광철', 'kwangcheolYoon@hanbit.co.kr', 43);
INSERT INTO MEMBER(NAME, EMAIL, AGE)
VALUES('공미영', 'MiyeongKong@hanbit.co.kr', 23);
INSERT INTO MEMBER(NAME, EMAIL, AGE)
VALUES( '김도윤', 'DoyunKim@hanbit.co.kr', 10);