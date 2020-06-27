SELECT authors.au_id AS 'Author ID', au_lname AS 'Last name', au_fname AS 'First name',  SUM(ytd_sales) AS 'Total' 
FROM titles 
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id 
INNER JOIN authors ON authors.au_id = titleauthor.au_id 
GROUP BY authors.au_id
ORDER BY SUM(ytd_sales) DESC LIMIT 3;
