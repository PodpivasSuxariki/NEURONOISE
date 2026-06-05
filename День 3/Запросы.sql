-- 1. Вывести всех пользователей
SELECT * 
FROM Users;
-- 2. Вывести все курсы
SELECT * 
FROM Courses;
-- 3. Вывести все комментарии
SELECT * 
FROM Comments;
-- 4. Показать имена пользователей и их комментарии
SELECT U.username, C.comment_text
FROM Users U
JOIN Comments C ON U.id = C.user_id;
-- 5. Показать названия курсов и комментарии к ним
SELECT Co.title, Cm.comment_text
FROM Courses Co
JOIN Comments Cm ON Co.id = Cm.course_id;
-- 6. Количество комментариев для каждого курса
SELECT Co.title,
       COUNT(Cm.id) AS CommentCount
FROM Courses Co
LEFT JOIN Comments Cm ON Co.id = Cm.course_id
GROUP BY Co.title;
-- 7. Количество комментариев каждого пользователя
SELECT U.username,
       COUNT(C.id) AS CommentCount
FROM Users U
LEFT JOIN Comments C ON U.id = C.user_id
GROUP BY U.username;
-- 8. Найти курсы, созданные после определенной даты
SELECT *
FROM Courses
WHERE created_at > '2025-01-01';
-- 9. Вывести последние 5 комментариев
SELECT TOP 5 *
FROM Comments
ORDER BY created_at DESC;
-- 10. Показать пользователей, которые оставили комментарии к курсам
SELECT DISTINCT U.username
FROM Users U
JOIN Comments C ON U.id = C.user_id;