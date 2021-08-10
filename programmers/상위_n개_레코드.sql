-- 코드를 입력하세요

SELECT ANI.NAME
    FROM (
    
        SELECT * FROM ANIMAL_INS
        ORDER BY DATETIME ASC
    ) ANI
    WHERE ROWNUM<=1;