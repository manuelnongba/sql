-- select username, tags.created_at
-- from users
-- join (
-- 	select user_id, created_at from caption_tags
-- 	union all
-- 	select user_id, created_at from photo_tags
-- ) as tags on tags.user_id = users.id
-- where tags.created_at > '2010-01-07'


-- COMMON TABLE EXPRESSIONS
WITH tags as (
	select user_id, created_at from caption_tags
	union all
	select user_id, created_at from photo_tags
)

select username, tags.created_at
from users
join tags on tags.user_id = users.id
where tags.created_at > '2010-01-07'

















