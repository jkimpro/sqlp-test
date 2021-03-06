-- 코드를 입력하세요
SELECT NAME, DATETIME
    FROM (
            SELECT A.NAME NAME, A.DATETIME DATETIME FROM 
            ANIMAL_INS A
            LEFT OUTER JOIN (ANIMAL_OUTS) B
            ON (A.ANIMAL_ID = B.ANIMAL_ID)
            WHERE B.ANIMAL_ID IS NULL
            ORDER BY A.DATETIME ASC
)
 WHERE ROWNUM <4;  