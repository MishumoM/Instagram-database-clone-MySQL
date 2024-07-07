--SQL queries for analytics challenges;

** Challenge 1: We want to reward our users who have been around the longest.....Find 5 oldest users**


SELECT * FROM users

ORDER BY created_at

LIMIT 5;



-- Challenge 2: We need to figure out when to schedule an ad campgain ... Find a day of the week which most users register on 

SELECT 
    DAYNAME(created_at) AS day,
    COUNT(id) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;


-- Challenge 3 :We want to target our inactive users with an email campaign...Find the users who have never posted a photo
	

SELECT 
    username
FROM
    users
        LEFT JOIN
    photos ON users.id = photos.user_id
WHERE
    photos.id IS NULL;
    
    
    
-- Challange 4 :We are running a new contest to see who can get the most  likes on a single photo... Find a user with most likes on a single photo


SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;


-- Challenge 5 : Our Investors want to know...How many times does the average user post?

SELECT (SELECT Count(*) 
        FROM   photos) / (SELECT Count(*) 
                          FROM   users) AS avg; 
                          


-- Challenge 6 : A brand wants to know which hastags to use in a post...What are the top 5 most commonly used hashtags? 


SELECT tags.tag_name, 
       Count(*) AS total 
FROM   photo_tags 
       JOIN tags 
         ON photo_tags.tag_id = tags.id 
GROUP  BY tags.id 
ORDER  BY total DESC 
LIMIT  5; 



-- Challenge 7: We have a small problem with bots on our site.... Find users who have liked every single photo on the site


SELECT username, 
       Count(*) AS num_likes 
FROM   users 
       INNER JOIN likes 
               ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) 
                    FROM   photos); 
