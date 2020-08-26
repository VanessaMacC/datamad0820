SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME ", t.title AS "TITLE", p.pub_name AS "PUBLISHER"
FROM authors as a
LEFT JOIN titleauthor as ta ON ta.au_id = a.au_id
LEFT JOIN titles as t ON t.title_id = ta.title_id
LEFT JOIN publishers as p ON p.pub_id = t.pub_id
ORDER BY a.au_lname
;

