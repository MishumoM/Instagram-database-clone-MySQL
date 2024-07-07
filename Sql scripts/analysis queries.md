**SQL queries for analytics challenges;**
---

**Challenge 1:** We want to reward our users who have been around the longest.....Find 5 oldest users

SELECT * FROM users

ORDER BY created_at

LIMIT 5;

![image](https://github.com/MishumoM/Instagram-database-clone-MySQL/assets/127921798/6ccfe528-bddf-439d-9582-2ced5b9c56b6)




**Challenge 2:** We need to figure out when to schedule an ad campgain ... Find a day of the week which most users register on 

SELECT

    DAYNAME(created_at) AS day,
    
COUNT(id) AS total

FROM users

GROUP BY day

ORDER BY total DESC

LIMIT 2;


![image](https://github.com/MishumoM/Instagram-database-clone-MySQL/assets/127921798/d2048bb1-01dc-43ba-89bb-c8afdce06963)







