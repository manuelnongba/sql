-- create index on users (username);

-- drop index users_username_idx;

-- with index: 0.057ms
-- without index: 1.282ms
-- explain analyze select * from users where username = 'Emil30'

-- select pg_size_pretty(pg_relation_size('users_username_idx'))

--no index needed for primary key columns or columns with unique constraints
-- select relname, relkind
-- from pg_class
-- where relkind = 'i';

-- EXPLAIN AND EXPLAIN ANALYZE
-- explain select username, contents
-- from users
-- join comments on comments.user_id = users.id
-- where username = 'Alyson14';

-- explain analyze select username, contents
-- from users
-- join comments on comments.user_id = users.id
-- where username = 'Alyson14';

-- select *
-- from pg_stats
-- where tablename = 'users';

-- explain select *
-- from likes
-- where created_at > '2013-01-01'

-- create index on likes (created_at);

















