SELECT  `a_reference`,`a_marque`, v_energie
FROM `a_article`
RIGHT JOIN v_voiture
ON a_id = v_fk_id_article;


SELECT  `a_designation`,`a_quantite`, v_energie, v_type
FROM `a_article`
RIGHT JOIN v_voiture
ON a_id = v_fk_id_article
WHERE `a_reference` = '1356567';


SELECT  `a_designation`,`a_quantite`, v_energie, v_type
FROM `a_article`
INNER JOIN v_voiture
ON a_id = v_fk_id_article
GROUP BY v_energie;