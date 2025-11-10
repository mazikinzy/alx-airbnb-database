INSERT INTO users (user_id, first_name, last_name, email, password_hash, roles)
VALUES  (1000, 'Kingsley', 'Orji', 'kingsley6294@gmail.com', 'mazikinzy', 'guest'),
		(1001, 'Blessing', 'Adedayo', 'adedayoblessingg@gmail.com', 'pookieboo', 'guest')
        ;
        
INSERT INTO property (property_id, host_id, name_of_property, property_description,
location, price_per_night)
VALUES (1, 1000, 'Kinzy Hotels', 'A place to experience your lifetime share of paradise',
		'Delta state', 40.25)
        ;
        
INSERT INTO booking (booking_id, property_id, user_id, start_date, end_date,
		total_price, booking_status)
VALUES (1, 1, 1000, '2025-10-30', '2025-10-31', 80.50, 'confirmed')
		;
        
INSERT INTO payment
VALUES (1, 1, 80.50, '2025-10-30', 'credit_card')
		;
        
INSERT INTO review (review_id, property_id, user_id, rating, comments)
VALUES (1, 1, 1000, 4, 'Very nice and hospitable')
		;
        
INSERT INTO message (message_id, sender_id, recipient_id, message_body)
VALUES (1, 1000, 1000, 'The best place to be')
		;
