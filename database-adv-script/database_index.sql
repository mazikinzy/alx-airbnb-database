
CREATE INDEX user_id_last_name_email_idx
ON users(user_id, last_name, email);

CREATE INDEX property_host_propertyname_idx
ON property(property_id, host_id, property_name);

CREATE INDEX booking_property_user_idx
ON booking(booking_id, property_id, user_id);