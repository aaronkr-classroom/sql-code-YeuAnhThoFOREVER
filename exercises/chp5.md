
# SQL Practice Problems

## 01. 다음 SQL 문장 중 문법적으로 옳은 것은?
- **Answer:** `SELECT 이름 FROM 학생 WHERE 학년 IN (1, 2, 3, 4);`

1. `SELECT 이름 FROM 학생 WHERE 학년 IN (1, 2, 3, 4);`
2. `SELECT 이름, 학년 FROM 학생 WHERE 학년 = NULL;`
3. `SELECT 이름, 학년 FROM 학생 ORDER 학년;`
4. `SELECT 학년 FROM 학생 WHERE 이름 = '한%';`

## 02. 다음 SQL 문 중 문법적으로 옳은 것은?
- **Answer:** `SELECT * FROM 학생 WHERE 학년 IS NULL;`

1. `SELECT COUNT(학년) FROM 학생 GROUP 학년;`
2. `SELECT 학년 FROM 학생 WHERE 이름 = ‘최 %';`
3. `SELECT 이름, 학과 FROM 학생 WHERE 학년 = (1, 2, 3, 4);`
4. `SELECT * FROM 학생 WHERE 학년 IS NULL;`

## 03. SQL의 SELECT절에 사용할 수 없는 키워드는?
- **Answer:** `ASC`

1. `ASC`
2. `*`
3. `DISTINCT`
4. `ALL`

## 04. 다음 SQL문에 대한 설명으로 옳지 않은 것은?
- **Answer:** 전체 학생의 성적이 점수순(내림차순)으로 정렬된다.

```sql
SELECT 학번, 성적, 학년
FROM 학생
WHERE 성적 >= 70
ORDER BY 학년, 성적 ASC;
```

1. 점수가 70 점 이상인 학생만을 검색한다.
2. 학생 테이블을 검색한다.
3. 학년별 학생들의 성적 순위를 쉽게 알 수 있다.
4. 전체 학생의 성적이 점수순(내림차순)으로 정렬된다.

## 05. 다음 SQL 문 중 문법적으로 옳지 않은 것은?
- **Answer:** `SELECT 부서이름, COUNT(*) FROM 부서 GROUP BY 부서번호 WHERE COUNT(*) > 5;`

1. `SELECT COUNT(DISTINCT 급여액) FROM 직원;`
2. `SELECT 부서번호, COUNT(*), AVG(급여액) FROM 직원 GROUP BY 부서번호;`
3. `SELECT 이름 FROM 직원 WHERE 상급자 IS NULL;`
4. `SELECT 부서이름, COUNT(*) FROM 부서 GROUP BY 부서번호 WHERE COUNT(*) > 5;`

## 06. 널 (NULL) 값에 대한 설명 중 옳지 않은 것은?
- **Answer:** 널 값에 대한 비교는 항상 참으로 간주한다.

1. 실세계의 정보 중에서 알 수 없는 값을 표현한다.
2. 기본키 속성은 널 값을 허용하지 않는다.
3. 널 값에 대한 비교는 항상 참으로 간주한다.
4. 널 값과 영(zero)은 구별해 주어야 한다.

## 07. SELECT 문의 질의를 계산하는 순서로 맞는 것은?
- **Answer:** FROM-WHERE-GROUP BY—HAVING—SELECT—ORDER BY

1. FROM—WHERE—ORDER BY—SELECT—GROUP BY—HAVING
2. FROM-WHERE-GROUP BY—HAVING—SELECT—ORDER BY
3. WHERE—FROM—ORDER BY—GROUP BY—HAVING—SELECT
4. WHERE—GROUP BY—HAVING—FROM—SELECT—ORDER BY

## 08. SQL의 GROUP BY에 대한 설명으로 옳지 않은 것은?
- **Answer:** 반드시 WHERE절을 사용해야 한다.

1. SELECT절에 GROUP BY절에서 사용한 속성을 명세한다.
2. GROUP BY절은 그룹화할 기준 속성을 명세한다.
3. 조건을 부여하려면 HAVING절을 사용한다.
4. 반드시 WHERE절을 사용해야 한다.

## 09. 다음 문장이 참이면 O, 거짓이면 X를 하시오.
1. O
2. X
3. O
4. O
5. O
6. X
7. O
8. O

## 10. 다음 (_____) 안에 적당한 용어를 채워 완성하시오.
1. Structured Query Language
2. 임베디드 방식
3. USE
4. *
5. EXISTS
6. HAVING
7. AS
8. 서브쿼리
9. IN
10. EXISTS
11. 상관 서브쿼리
12. n-1

## 11. "1 학년부터 4학년 순으로 학년별 평균 성적을 검색하라."는 SQL문 작성

```sql
SELECT 학년, AVG(성적)
FROM 학생
GROUP BY 학년
ORDER BY 학년 ASC;
```

## 12. "이 씨 성을 가진 2,3,4학년 학생들의 성적을 내림차순으로 검색하라."는 SQL문 작성

```sql
SELECT 이름, 성적
FROM 학생
WHERE 학년 IN (2, 3, 4) AND 이름 LIKE '이%'
ORDER BY 성적 DESC;
```

## 13. "1 학년을 제외한 2,3,4학년별 평균 성적이 80점 이상인 과목에 대해 과목별 학생수를 검색하라."

```sql
SELECT 과목, COUNT(*) AS 학생수
FROM 과목
WHERE 학년 <> 1
GROUP BY 과목
HAVING AVG(성적) >= 80;
```

## 14. SQL문의 절과 연관되는 관계 대수 연산 선택
1. **프로젝트 연산**
2. **카티션 프로덕트**
3. **셀렉트 연산**

## 15. 4학년 학생들의 성적을 10점씩 증가시키는 SQL 명령문

```sql
UPDATE 학생
SET 성적 = 성적 + 10
WHERE 학년 = 4;
```

## 16. 다음 데이터베이스 질의 요구사항 SQL 표현

1. ```sql
   SELECT 이름 FROM 학생 WHERE 나이 IS NULL;
   ```
2. ```sql
   SELECT DISTINCT 나이 FROM 학생 WHERE 이름 LIKE '김%' AND 학년 = 3;
   ```
3. ```sql
   SELECT 성별, AVG(나이) FROM 학생 GROUP BY 성별;
   ```
4. ```sql
   SELECT 학번, 나이, 학년 FROM 학생 ORDER BY 나이 DESC, 학년 ASC;
   ```
5. ```sql
   SELECT 학번, 이름, 나이 FROM 학생 WHERE 성별 = 'M' AND 나이 = (SELECT MIN(나이) FROM 학생 WHERE 성별 = 'M');
   ```
6. ```sql
   SELECT 나이, COUNT(*) FROM 학생 GROUP BY 나이 HAVING COUNT(*) >= 50;
   ```

## 17. 데이터베이스 질의 요구사항 SQL 표현

1. ```sql
   SELECT 이름, 학년 FROM 학생 WHERE 소속학과 = '컴퓨터학과' ORDER BY 학년 DESC;
   ```
2. ```sql
   SELECT 학번, 과목번호, (중간성적 + 기말성적) AS 총점 FROM 수강;
   ```
3. ```sql
   SELECT 이름, SUM(중간성적 + 기말성적) AS 총점 FROM 학생 JOIN 수강 ON 학생.학번 = 수강.학번 GROUP BY 이름;
   ```
