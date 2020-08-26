SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", ROUND(SUM(t.advance * (ta.royaltyper/100) + (t.price * t.ytd_sales) * (t.royalty/100) * (ta.royaltyper/100))) AS "PROFIT"
FROM authors as a
LEFT JOIN titleauthor as ta ON ta.au_id = a.au_id
LEFT JOIN titles as t ON t.title_id = ta.title_id
GROUP BY a.au_id, a.au_lname,a.au_fname
ORDER BY "PROFIT" LIMIT 3;
