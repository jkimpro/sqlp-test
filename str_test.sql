
-- subsr 실습
SELECT Job_id,
	substr(job_id, -LENGTH(job_id)) st1,
	substr(job_id, -LENGTH(job_id),2) st2,
	substr(job_id, -3) st3
FROM hr.EMPLOYEES;


--employees table view
SELECT * FROM hr.EMPLOYEES e ;

-- instr 실습 (특정문자를 포함하고 있는 행찾기)
SELECT * FROM hr.EMPLOYEES e 
WHERE instr(FIRST_NAME , 'd') >0;

-- 특정 문자를 다른 문자로 바꾸는 replace함수
SELECT '010-5427-3274' AS replace_before,
	replace('010-5427-3274', '-', '.') AS option1,
	replace('010-5427-3274', '-') AS option2
FROM dual;

--데이터의 빈공간을 특정 문자로 채우는 LPAD, RPAD 함수
SELECT 'oracle',
	lpad('oracle',10, '#') AS lpad1,
	rpad('oracle', 10, '*') AS rpad1,
	lpad('oracle', 10) AS lpad2,
	rpad('oracle',10) AS rpad2
FROM dual;


--RPAD 함수를 사용하여 개인정보 뒷자리 *표시로 출력하기
SELECT 
	rpad('971225-',14, '*') AS rpad_jmno,
	rpad('010-5427-', 13, '*') AS rpad_pno
FROM dual;

--두열 사이에 콜론넣고 연결하기
SELECT * FROM hr.EMPLOYEES e ;

SELECT concat(LAST_name, first_name) FROM hr.EMPLOYEES e ;


--SELECT 
--	concat(employee_id, concat(' : ', name.fullname)) AS option1
--FROM hr.EMPLOYEES e
--WHERE  
--	 name =  ( SELECT concat(LAST_NAME, FIRST_NAME) AS fullname
--	 FROM hr.EMPLOYEES);


