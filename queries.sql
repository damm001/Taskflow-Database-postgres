
-- Users with exactly 5 tasks created
SELECT username
FROM users
WHERE tasks_created = 5;

-- Users with username starting with 'd' and 2 tasks completed
SELECT username
FROM users
WHERE username ILIKE 'd%%'
AND tasks_completed = 2;

-- Total tasks per user
SELECT u.username, COUNT(t.id) AS total_tasks
FROM users u
LEFT JOIN tasks t ON u.id = t.user_id
GROUP BY u.username;

-- Users with more completed tasks than pending
SELECT u.username
FROM users u
JOIN tasks t ON u.id = t.user_id
GROUP BY u.username
HAVING COUNT(CASE WHEN t.status = 'completed' THEN 1 END) >
       COUNT(CASE WHEN t.status = 'pending' THEN 1 END);

-- Top 5 most active users
SELECT username, tasks_created
FROM users
ORDER BY tasks_created DESC
LIMIT 5;
