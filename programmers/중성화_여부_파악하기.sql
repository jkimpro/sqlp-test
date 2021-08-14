-- 코드를 입력하세요
SELECT A.ANIMAL_ID ANIMAL_ID,
        A.NAME NAME,
        CASE 
            WHEN A.SEX_UPON_INTAKE LIKE 'Neutered%'     THEN 'O'
            WHEN A.SEX_UPON_INTAKE LIKE 'Spayed%'       THEN 'O'
        ELSE 'X'
        END 중성화
        FROM ANIMAL_INS A
        ORDER BY ANIMAL_ID