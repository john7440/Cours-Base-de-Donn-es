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


SELECT  `a_designation`,`a_quantite`, v_energie, v_type
FROM `a_article`
INNER JOIN v_voiture
ON a_id = v_fk_id_article
GROUP BY v_energie 
ORDER BY a_designation;


UPDATE a_article 
SET a_quantite = 25 
WHERE a_id = 1;

DELETE FROM a_article
WHERE a_id = 3;

SELECT c_nom, c_adresse, c_tel, v_plaque
FROM v_voiture
INNER JOIN c_client
ON c_id = v_fk_id_client;
WHERE v_plaque = 'FN-951-EA'


SELECT c_nom, v_marque, v_type, v_energie, v_annee
FROM c_client
INNER JOIN v_voiture
ON c_id = v_fk_id_client;

SELECT v_marque, v_type, v_energie, v_annee, a_designation
FROM c_client
INNER JOIN v_voiture
ON c_id = v_fk_id_client
INNER JOIN a_article
ON a_id = v_fk_id_article;


SELECT ord_id, c_nom, v_marque, ord_prix
FROM g_ordre
INNER JOIN g_client
ON ord_fk_id_client = c_id
INNER JOIN g_voiture
ON c_id = v_fk_id_client

ALTER TABLE g_ordre
ADD ord_prix FLOAT
GENERATED ALWAYS AS (ord_heure * ord_taux_horaire) STORED;

CREATE OR REPLACE VIEW facture_test AS
SELECT 
    f.f_id AS 'Numéro Facture',
	f.f_date AS 'Date',
    c.c_nom AS 'Nom Client',
    v.v_marque AS 'Marque Véhicule',
    o.ord_heure AS 'Heures Passées',
    o.ord_taux_horaire 'Taux Horaire',
    o.ord_prix AS 'Prix Main d\'oeuvre',
	a.a_type AS 'Nom Article',
    av.av_quantite AS 'Quantité',
	
    IFNULL(SUM(av.av_quantite * a.a_prix),0) AS 'Prix Pièces',
    o.ord_prix + IFNULL(SUM(av.av_quantite * a.a_prix),0) AS 'Total'
FROM g_facture f
JOIN g_ordre o ON f.ord_id = o.ord_id
INNER JOIN g_client c ON o.ord_fk_id_client = c.c_id
INNER JOIN g_voiture v ON c.c_id = v.v_fk_id_client
INNER JOIN g_avoir av ON o.ord_id = av.ord_id
INNER JOIN g_article a ON av.a_id = a.a_id

GROUP BY f.f_id, f.ord_id, f.f_date, o.ord_prix;