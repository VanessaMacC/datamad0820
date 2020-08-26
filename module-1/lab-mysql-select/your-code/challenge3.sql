SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "LAST NAME", SUM(s.qty) AS "TOTAL"
FROM authors AS a
LEFT JOIN titleauthor AS ta ON ta.au_id = a.au_id
LEFT JOIN sales AS s ON s.title_id = ta.title_id
GROUP BY a.au_id, a.au_lname,a.au_fname
ORDER BY "TOTAL" DESC LIMIT 3;