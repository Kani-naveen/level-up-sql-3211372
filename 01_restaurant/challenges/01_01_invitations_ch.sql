-- Generate a list of customer information.

-- Show their first name, last name, and email address.
-- Sort the list of results by last name.

SELECT * FROM CUSTOMERS;

SELECT FirstName, LastName, Email 
FROM CUSTOMERS
ORDER BY LastName;