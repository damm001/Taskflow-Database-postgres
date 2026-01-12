
-- Auto-generated sample users
INSERT INTO users (username, password_hash, tasks_created, tasks_completed)
SELECT
    'user_' || substr(md5(random()::text), 1, 5),
    md5(random()::text),
    floor(random() * 10)::int,
    floor(random() * 5)::int
FROM generate_series(1, 20);

-- Auto-generated tasks
INSERT INTO tasks (user_id, title, description, status)
SELECT
    u.id,
    'Task ' || g,
    'Auto generated task',
    CASE WHEN random() > 0.5 THEN 'completed' ELSE 'pending' END
FROM users u, generate_series(1, 3) g;
