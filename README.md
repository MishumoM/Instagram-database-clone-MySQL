# Instagram-database-clone-MySQL

During my course, The Ultimate MySQL Bootcamp: Go from SQL Beginner to Expert by Colt Steele, I focused on creating a relational database schema similar to an Instagram platform. This project includes tables for users, photos, comments, likes, follows, tags, and photo_tags. I implemented SQL queries to tackle various analytics challenges, such as identifying the oldest users, determining popular registration days, finding inactive users, analyzing popular hashtags, and more, to effectively manage and analyze the data.

**Project Overview**
---

**Tables Created:**

**users**: Stores user information, including username and registration timestamp.

**photos**: Contains details of photos uploaded by users, including image URLs and creation timestamps.

**comments**: Manages comments made on photos, linking them to specific users and photos.

**likes**: Tracks likes given by users to photos.

**follows**: Establishes follow relationships between users.

**tags**: Stores unique tags associated with photos.

**photo_tags**: Defines a many-to-many relationship between photos and tags.


**SQL Challenges:**
---
1.We want to reward our users who have been around the longest.....Find 5 oldest users

2.We need to figure out when to schedule an ad campgain ... Find a day of the week which most users register on.

3.We want to target our inactive users with an email campaign...Find the users who have never posted a photo

4.:We are running a new contest to see who can get the most  likes on a single photo... Find a user with most likes on a single photo

5.Our Investors want to know...How many times does the average user post?

6.A brand wants to know which hastags to use in a post...What are the top 5 most commonly used hashtags? 

7.We have a small problem with bots on our site.... Find users who have liked every single photo on the site.

**Project Structure**
---

***Schema:*** Contains the SQL schema for database setup and management.

***Challenges:*** Stores SQL queries for various analytical challenges.
