SELECT Job_id,
	substr(job_id, -LENGTH(job_id)) st1,
	substr(job_id, -LENGTH(job_id),2) st2,
	substr(job_id, -3) st3
FROM hr.EMPLOYEES;




SELECT * FROM hr.EMPLOYEES e ;



