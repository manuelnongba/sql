
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

-- DROP VIEW recent_posts;
-- 

-- MATERIALISED VIEW
-- create materialized view weekly_likes as (
-- 		select 
-- 		date_trunc('week', COALESCE(posts.created_at, comments.created_at)) as week,
-- 		count(posts.id) as num_posts,
-- 		count(comments.id) as num_comments
-- 	from likes
-- 	left join posts on posts.id = likes.post_id
-- 	left join comments on comments.id = likes.comment_id
-- 	group by week
-- 	order by week
-- ) with data;

-- select * from weekly_likes

-- delete from posts
-- where created_at < '2010-02-01'

-- refresh materialized view weekly_likes














