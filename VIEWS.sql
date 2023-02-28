
-- select username, count(*)
-- from users
-- join (
-- 	select user_id from photo_tags
-- 	union all
-- 	select user_id from caption_tags
-- ) as tags on tags.user_id = users.id
-- group by username
-- order by count (*) desc;

-- create view tags as (
-- 	select id, created_at, user_id, post_id, 'photo_tag' as type from
-- 	photo_tags
-- 	union all
-- 	select id, created_at, user_id, post_id, 'caption_tag' as type from caption_tags
-- )

-- select * from tags;


-- select username, count(*)
-- from users
-- join tags on tags.user_id = users.id
-- group by username
-- order by count (*) desc;

-- create view recent_posts as (
-- 	select * from posts
-- 	order by created_at desc
-- 	limit 10
-- )

-- select username from recent_posts 
-- join users on users.id = recent_posts.user_id;


-- create or replace view recent_posts as (
-- 	select * from posts
-- 	order by created_at desc
-- 	limit 15
-- )

DROP VIEW recent_posts;















