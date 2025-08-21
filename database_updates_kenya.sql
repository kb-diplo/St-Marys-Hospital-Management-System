-- Backup existing data (commented out for safety)
-- CREATE TABLE accountant_backup SELECT * FROM accountant;
-- CREATE TABLE admin_backup SELECT * FROM admin;
-- CREATE TABLE doctor_backup SELECT * FROM doctor;
-- CREATE TABLE patient_backup SELECT * FROM patient;
-- CREATE TABLE invoice_backup SELECT * FROM invoice;
-- CREATE TABLE payment_backup SELECT * FROM payment;
-- CREATE TABLE medicine_backup SELECT * FROM medicine;

-- Update phone numbers to Kenyan format (+254...)
UPDATE accountant SET 
    phone = CONCAT('+2547', SUBSTRING(phone, -8)),
    address = CONCAT(address, ', Nakuru, Kenya');

UPDATE admin SET 
    phone = '+254700000000',
    address = 'St. Mary\'s Community Hospital, Nakuru, Kenya';

UPDATE doctor SET 
    phone = CONCAT('+2547', SUBSTRING(phone, -8)),
    address = CONCAT(address, ', Nakuru, Kenya');

UPDATE patient SET 
    phone = CONCAT('+2547', SUBSTRING(phone, -8)),
    address = CONCAT(address, ', Nakuru, Kenya');

UPDATE laboratorist SET 
    phone = CONCAT('+2547', SUBSTRING(phone, -8)),
    address = CONCAT(address, ', Nakuru, Kenya');

UPDATE nurse SET 
    phone = CONCAT('+2547', SUBSTRING(phone, -8)),
    address = CONCAT(address, ', Nakuru, Kenya');

UPDATE pharmacist SET 
    phone = CONCAT('+2547', SUBSTRING(phone, -8)),
    address = CONCAT(address, ', Nakuru, Kenya');

-- Convert all monetary values from USD to Ksh (assuming 1 USD = 150 Ksh)
UPDATE invoice SET 
    amount = ROUND(amount * 150, 2),
    description = REPLACE(description, '$', 'Ksh ');

UPDATE payment SET 
    amount = ROUND(amount * 150, 2),
    description = REPLACE(description, '$', 'Ksh ');

UPDATE medicine SET 
    price = ROUND(price * 150, 2);

-- Update system settings for currency
UPDATE settings SET 
    description = 'Ksh' 
    WHERE type = 'currency';

-- Add Kenyan location to hospital details
UPDATE settings SET 
    description = 'St. Mary\'s Community Hospital, Nakuru, Kenya' 
    WHERE type = 'system_name' OR type = 'hospital_name';

-- Update blood bank location
UPDATE blood_donor SET 
    address = CONCAT(address, ', Nakuru, Kenya'),
    phone = CONCAT('+2547', SUBSTRING(phone, -8));

-- Update noticeboard with Kenyan context
UPDATE noticeboard SET 
    notice_title = CONCAT(notice_title, ' - St. Mary\'s Nakuru'),
    notice = CONCAT(notice, '\n\nSt. Mary\'s Community Hospital, Nakuru - Call: +254700000000');
