create table catalog.loans (
  loans_id bigint generated always as identity primary key,
  book_id bigint not null references catalog.book,
  user_id bigint not null unique,
  loans_date date,
  due_date date,
  check(due_date - loans_date <= 14)
);
