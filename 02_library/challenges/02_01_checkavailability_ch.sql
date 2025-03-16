-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

select count(bookid) from books
where title = 'Dracula';

select count(books.title) from loans
join books on loans.bookid=books.bookid
where books.title='Dracula'
and loans.returneddate is null;

select(
select count(bookid) from books
where title = 'Dracula'
)-(
select count(books.title) from loans
join books on loans.bookid=books.bookid
where books.title='Dracula'
and loans.returneddate is null
) AvailableCopies;