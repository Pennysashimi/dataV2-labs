SELECT authors.au_id AS 'Author ID', au_lname AS 'Last name', au_fname AS 'First name' , SUM(IFNULL(titles.ytd_sales,0)) AS 'Total' 
FROM titles 
RIGHT JOIN titleauthor ON titles.title_id = titleauthor.title_id 
RIGHT JOIN authors ON authors.au_id = titleauthor.au_id 
GROUP BY authors.au_id
ORDER BY SUM(ytd_sales) DESC ;