CREATE INDEX start_date_idx
ON booking(start_date);

SELECT * FROM booking
WHERE start_date < CURRENT_DATE();