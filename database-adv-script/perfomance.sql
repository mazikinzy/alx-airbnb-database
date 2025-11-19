EXPLAIN
SELECT b.booking_id,
	   b.start_date,
       b.end_date,
       b.total_price,
       b.booking_status,
       b.created_at,
       
       u.first_name,
       u.last_name,
       
       p.property_name,
       p.location,
       p.price_per_night,
       
       pay.amount,
       pay.payment_date,
       pay.payment_method
       
FROM booking AS b
LEFT JOIN users as u
ON b.user_id = u.user_id
LEFT JOIN property as p
ON b.property_id = p.property_id
LEFT JOIN payment as pay
ON b.booking_id = pay.booking_id;