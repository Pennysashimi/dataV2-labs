SELECT authors.au_id AS 'Author ID', au_lname AS 'Last name', au_fname AS 'First name', pub_name AS 'Publisher name', COUNT(*) AS 'Title count' 
FROM titles 
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id 
INNER JOIN authors ON authors.au_id = titleauthor.au_id 
INNER JOIN publishers ON publishers.pub_id = titles.pub_id 
GROUP BY authors.au_id, publishers.pub_id 
ORDER BY COUNT(*) DESC;
