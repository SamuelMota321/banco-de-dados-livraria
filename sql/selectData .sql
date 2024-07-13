SELECT
    *
FROM
    books;

SELECT
    books."id" AS "bookId",
    books."name" AS "bookTitle",
    categories."id" AS "categoryId",
    categories."name" AS "categoryName"
FROM
    books
    JOIN books_categories ON books."id" = books_categories."bookId"
    JOIN categories ON books_categories."categoryId" =  categories."id"
WHERE
    books_categories."categoryId" = 3;

SELECT
    books."id" AS "bookId",
    books."name" AS "bookTitle",
    books."authorId" AS "bookAuthorId",
    categories."id" AS "categoryId",
    categories."name" AS "categoryName"
FROM
    books
    JOIN books_categories ON books."id" = books_categories."bookId"
    JOIN categories ON categories."id" =books_categories."categoryId";

SELECT
    books."id" AS "bookId",
    books."name" AS "bookTitle",
    authors."id" AS "authorId",
    authors."name" AS "authorName"
FROM
    books
    JOIN authors ON books."authorId" = authors."id"
WHERE
    books."id" = 1;