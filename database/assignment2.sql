-- 1. Insert the new record into the account table:
INSERT INTO account (
        account_firstname,
        account_lastname,
        account_email,
        account_password
    )
VALUES (
        'Tony',
        'Stark',
        'tony@starkent.com',
        'Iam1ronM@n'
    );
-- 2. Modify the Tony Stark record to change the account_type to "Admin":
UPDATE account
SET account_type = 'Admin'
WHERE account_firstname = 'Tony'
    AND account_lastname = 'Stark';
-- 3. Delete the Tony Stark record from the database:
DELETE FROM account
WHERE account_firstname = 'Tony'
    AND account_lastname = 'Stark';
-- 4. Modify the "GM Hummer" record using the REPLACE function:
UPDATE inventory
SET inv_description = REPLACE(
        inv_description,
        'small interiors',
        'a huge interior'
    )
WHERE inv_make = 'GM'
    AND inv_model = 'Hummer';
-- 5. Use an inner join to select specific fields from two tables:
SELECT inventory.inv_make,
    inventory.inv_model,
    classification.classification_name
FROM inventory
    INNER JOIN classification ON inventory.classification_id = classification.classification_id
WHERE classification_name = 'Sport';
-- 6. Update image paths in the inventory table:
UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');