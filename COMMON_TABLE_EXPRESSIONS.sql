-- select username, tags.created_at
-- from users
-- join (
-- 	select user_id, created_at from caption_tags
-- 	union all
-- 	select user_id, created_at from photo_tags
-- ) as tags on tags.user_id = users.id
-- where tags.created_at > '2010-01-07'


-- COMMON TABLE EXPRESSIONS
-- WITH tags as (
-- 	select user_id, created_at from caption_tags
-- 	union all
-- 	select user_id, created_at from photo_tags
-- )

-- select username, tags.created_at
-- from users
-- join tags on tags.user_id = users.id
-- where tags.created_at > '2010-01-07'

-- RECURSIVE CTE
-- WITH recursive countdown(val) as (
-- 	select 3 AS val --initial query
-- 	union
-- 	select val - 1 from countdown where val > 1 -- recursive query
-- )
-- select *
-- from countdown

-- with recursive suggestions (leader_id, follower_id, depth) as (
-- 		select leader_id, follower_id, 1 as depth -- given a constant value of 1
-- 		from followers
-- 		where follower_id = 1000 -- id to find suggestions for
-- 	union
-- 		select followers.leader_id, followers.follower_id, depth + 1
-- 		from followers
-- 		join suggestions on suggestions.leader_id = followers.follower_id
-- 		where depth < 3
-- )

-- select distinct users.id, users.username
-- from suggestions
-- join users on users.id = suggestions.leader_id
-- where depth > 1
-- limit 30;
