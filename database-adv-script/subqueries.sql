SELECT * FROM review
WHERE (SELECT AVG(rating) FROM review) > 4;

-- Write a correlated subquery to find users who have made more than 3 bookings.
SELECT CONCAT(first_name, '', last_name) as Users FROM users
WHERE (SELECT user_id FROM booking
GROUP BY user_id
HAVING COUNT(user_id) > 1);