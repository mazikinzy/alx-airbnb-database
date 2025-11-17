SELECT * FROM booking
INNER JOIN users
ON booking.booking_id = users.user_id
;

SELECT * FROM property AS prop
LEFT JOIN review
ON review.property_id = prop.property_id
;

SELECT * FROM users
LEFT JOIN booking
ON booking.user_id = users.user_id
;