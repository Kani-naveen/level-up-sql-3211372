-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.
SELECT TYPE, NAME, DESCRIPTION, PRICE
FROM DISHES
ORDER BY PRICE;

SELECT TYPE, NAME, DESCRIPTION, PRICE
FROM DISHES
WHERE TYPE = 'Appetizer' or TYPE = 'Beverage'
ORDER by TYPE;

SELECT TYPE, NAME, DESCRIPTION, PRICE
FROM DISHES
WHERE TYPE != 'Beverage'
ORDER BY TYPE;