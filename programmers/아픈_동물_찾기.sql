-- 코드를 입력하세요
SELECT ANI.ANIMAL_ID, ANI.NAME
FROM ANIMAL_INS ANI
WHERE ANI.INTAKE_CONDITION = 'Sick'
ORDER BY ANI.ANIMAL_ID ASC;