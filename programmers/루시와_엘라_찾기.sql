-- 코드를 입력하세요
SELECT A.ANIMAL_ID ANIMAL_ID,
        A.NAME NAME,
        A.SEX_UPON_INTAKE SEX_UPON_INTAKE
        FROM ANIMAL_INS A
        WHERE NAME IN ('Lucy','Ella','Pickle',
                        'Rogan','Sabrina','Mitty')
        ORDER BY ANIMAL_ID;