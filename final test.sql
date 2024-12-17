CREATE TABLE 교수 (
    교번 INT PRIMARY KEY,
    교수명 VARCHAR(50) NOT NULL
);

CREATE TABLE 강의실 (
    강의실번호 INT PRIMARY KEY,
    좌석수 INT NOT NULL
);

CREATE TABLE 교과목 (
    과목코드 INT PRIMARY KEY,
    과목명 VARCHAR(100) NOT NULL
);

CREATE TABLE 학생 (
    학번 INT PRIMARY KEY,
    학생명 VARCHAR(50) NOT NULL
);

CREATE TABLE 강의 (
    강의ID INT PRIMARY KEY,
    교번 INT,
    강의실번호 INT,
    FOREIGN KEY (교번) REFERENCES 교수(교번),
    FOREIGN KEY (강의실번호) REFERENCES 강의실(강의실번호)
);

CREATE TABLE 수강신청 (
    신청ID INT PRIMARY KEY,
    학번 INT,
    과목코드 INT,
    신청날짜 DATE NOT NULL,
    FOREIGN KEY (학번) REFERENCES 학생(학번),
    FOREIGN KEY (과목코드) REFERENCES 교과목(과목코드)
);

CREATE TABLE 수강취소 (
    취소ID INT PRIMARY KEY,
    신청ID INT,
    취소날짜 DATE NOT NULL,
    FOREIGN KEY (신청ID) REFERENCES 수강신청(신청ID)
);

CREATE TABLE 멘토링 (
    멘토링ID INT PRIMARY KEY,
    멘토학번 INT,
    멘티학번 INT,
    FOREIGN KEY (멘토학번) REFERENCES 학생(학번),
    FOREIGN KEY (멘티학번) REFERENCES 학생(학번)
);
INSERT INTO 교수 (교번, 교수명) VALUES (1, '김철수'), (2, '이영희');

INSERT INTO 강의실 (강의실번호, 좌석수) VALUES (101, 30), (102, 50);

INSERT INTO 교과목 (과목코드, 과목명) VALUES (201, '데이터베이스'), (202, '알고리즘');

INSERT INTO 학생 (학번, 학생명) VALUES (301, '박지훈'), (302, '최수민');

INSERT INTO 강의 (강의ID, 교번, 강의실번호) VALUES (401, 1, 101), (402, 2, 102);

INSERT INTO 수강신청 (신청ID, 학번, 과목코드, 신청날짜)
VALUES (501, 301, 201, '2024-06-01'), (502, 302, 202, '2024-06-02');

INSERT INTO 수강취소 (취소ID, 신청ID, 취소날짜) VALUES (601, 501, '2024-06-05');

INSERT INTO 멘토링 (멘토링ID, 멘토학번, 멘티학번)
VALUES (701, 301, 302);
SELECT * FROM 교수;
SELECT * FROM 강의;
SELECT * FROM 수강신청;
SELECT * FROM 멘토링;