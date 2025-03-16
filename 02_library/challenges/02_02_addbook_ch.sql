-- Add books to the library database.

-- Title: Dracula
-- Author: Bram Stoker
-- Published: 1897
-- ID Number: 4819277482

-- Title: Gulliver’s Travels into Several Remote Nations of the World
-- Author: Jonathan Swift
-- Published: 1729
-- ID Number: 4899254401

insert into books
(title, Author, published, barcode)
values
('Dracula','Bram Stoker',1897,4819277482),
('Gulliver’s Travels into Several Remote Nations of the World',
'Jonathan Swift',1729,4899254401)

select count(bookid), title from books
group by bookid
order by bookid desc
limit 5;
