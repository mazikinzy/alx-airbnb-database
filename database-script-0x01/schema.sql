CREATE TABLE users (
	user_id INT PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(40) UNIQUE NOT NULL,
    password_hash VARCHAR(50) NOT NULL,
    phone_number VARCHAR(13) NULL,
    roles ENUM('guest', 'host', 'admin') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE property ( 
    property_id INT,
    user_id INT,
    rating INTEGER CHECK(rating >= 1 AND rating <=5) NOT NULL,
    comments TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(property_id) REFERENCES property(property_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
    );
    
CREATE TABLE booking (
	booking_id INT PRIMARY KEY,
    property_id INT,
    user_id INT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(6, 2),
    booking_status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(property_id) REFERENCES property(property_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
    );

CREATE TABLE payment (
	payment_id INT PRIMARY KEY,
    booking_id INT,
    amount DECIMAL(6, 2),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM('credit_card', 'paypal', 'stripe') NOT NULL,
    FOREIGN KEY(booking_id) REFERENCES booking(booking_id)
    );

CREATE TABLE review (
	review_id INT,
    property_id INT,
    user_id INT,
    rating INTEGER CHECK(rating >= 1 AND rating <=5) NOT NULL,
    comments TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(property_id) REFERENCES property(property_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
    );

CREATE TABLE message (
	message_id INT PRIMARY KEY,
    sender_id INT,
    recipient_id INT,
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES users(user_id),
    FOREIGN KEY (recipient_id) REFERENCES users(user_id)
    );