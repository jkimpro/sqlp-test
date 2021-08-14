-- 코드를 입력하세요
SELECT R.ANIMAL_ID ANIMAL_ID,
        R.NAME NAME
        FROM (
            SELECT A.ANIMAL_ID ANIMAL_ID, 
            A.NAME NAME,
            (B.DATETIME - A.DATETIME) TOTALTIME
            FROM ANIMAL_INS A
            LEFT OUTER JOIN (
                ANIMAL_OUTS
            ) B
            ON A.ANIMAL_ID = B.ANIMAL_ID
            WHERE B.ANIMAL_ID IS NOT NULL
            ORDER BY TOTALTIME DESC 
            ) R
WHERE ROWNUM<3
