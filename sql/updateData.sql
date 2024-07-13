UPDATE
    books
SET
    "name" = 'Harry Potter e o prisioneiro de askabam'
WHERE
    "name" = 'Harry Potter';

UPDATE
    books
SET
    "authorId" = (
        SELECT
            "id"
        FROM
            authors
        WHERE
            "name" = 'Eiichiro Oda'
    )
WHERE
    "name" LIKE 'One Piece%';