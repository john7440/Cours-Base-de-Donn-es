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


CREATE OR REPLACE VIEW v_facture_detail_articles AS
SELECT 
    f.f_id AS 'N° Facture',
    f.f_date AS 'Date',
    c.c_nom AS 'Client',
    v.v_marque AS 'Véhicule',
    o.ord_heure AS 'Heures',
    o.ord_prix AS 'Main d\'œuvre',
    a.a_designation AS 'Article',
    a.a_marque AS 'Marque',
    av.av_quantite AS 'Qté',
    a.a_prix AS 'Prix unitaire',
    (av.av_quantite * a.a_prix) AS 'Prix total article',
    ((av.av_quantite * a.a_prix) + o.ord_prix) AS 'Total OR',
    SUM((av.av_quantite * a.a_prix) + o.ord_prix) AS 'Total'
FROM g_facture f
JOIN g_ordre o ON f.f_id = o.ord_fk_id_facture
JOIN g_client c ON f.f_fk_id_client = c.c_id
LEFT JOIN g_voiture v ON c.c_id = v.v_fk_id_client
LEFT JOIN g_avoir av ON o.ord_id = av.ord_id
LEFT JOIN g_article a ON av.a_id = a.a_id
ORDER BY f.f_id, a.a_designation;


CREATE OR REPLACE VIEW test_total_facture AS
SELECT 
    f.f_id AS 'N° Facture',
    f.f_date AS 'Date',
    c.c_nom AS 'Client',
    v.v_marque AS 'Véhicule',
    o.ord_heure AS 'Heures',
    o.ord_prix AS 'Main d\'œuvre',
    a.a_designation AS 'Article',
    a.a_marque AS 'Marque',
    av.av_quantite AS 'Qté',
    a.a_prix AS 'Prix unitaire',
    (av.av_quantite * a.a_prix) AS 'Prix total article',
    (o.ord_prix + (av.av_quantite * a.a_prix)) AS 'Test',
	SUM(o.ord_prix + (av.av_quantite * a.a_prix)) OVER (PARTITION BY f.f_id) AS 'Total Facture'
FROM g_facture f
JOIN g_ordre o ON f.f_id = o.ord_fk_id_facture
JOIN g_client c ON f.f_fk_id_client = c.c_id
LEFT JOIN g_voiture v ON c.c_id = v.v_fk_id_client
LEFT JOIN g_avoir av ON o.ord_id = av.ord_id
LEFT JOIN g_article a ON av.a_id = a.a_id
-- GROUP BY f.f_id, a.a_id
ORDER BY f.f_id, a.a_designation;

SELECT DISTINCT a_designation
FROM g_article
WHERE a_designation LIKE '%Filtre%';

SELECT DISTINCT a_designation AS 'Désignation', SUM(a_quantite) AS 'Quantité'
FROM g_article
WHERE a_designation LIKE '%Filtre%'
GROUP BY a_designation;

SELECT DISTINCT a_designation AS 'Désignation', SUM(a_quantite) AS 'Quantité'
FROM g_article
GROUP BY a_designation;

SELECT COUNT(a_designation) AS 'Nombre Articles en Stock'
FROM g_article;

SELECT COUNT(a_designation) AS 'Stock Filtre à Huile'
FROM g_article
WHERE a_designation = 'Filtre à huile';

SELECT COUNT(a_designation) AS 'Stock Filtre à Huile', a_marque AS 'Marque'
FROM g_article
WHERE a_designation = 'Filtre à huile'
GROUP BY a_marque;


SELECT a_designation AS 'Designation', a_marque AS 'Marque', COUNT(*) AS Duplicate
FROM g_article
GROUP BY a_marque, a_designation
HAVING COUNT(*) >1;

SELECT 
    c.c_nom,
    v.v_marque ,
    v.v_modele ,
    v.v_plaque,
    COUNT(o.ord_fk_id_facture) AS Nombre_de_passages
FROM g_voiture v
JOIN g_client c ON v.v_fk_id_client = c.c_id
JOIN g_ordre o ON o.ord_fk_id_client = c.c_id
GROUP BY c_nom;

SELECT 
    c.c_nom AS Nom,
    v.v_marque AS Marque,
    v.v_modele AS Modèle,
    v.v_plaque AS Immatriculation,
    COUNT(DISTINCT o.ord_fk_id_facture) AS NbPassages
FROM g_voiture v
JOIN g_client c ON v.v_fk_id_client = c.c_id
JOIN g_ordre o ON o.ord_fk_id_client = c.c_id
GROUP BY c_nom
ORDER BY NbPassages DESC;

SELECT  `ord_id` AS 'OR ID', a_designation AS 'Designation', a_ref AS 'Référence',`av_quantite` AS 'Quantité'
FROM g_avoir
INNER JOIN g_article 
ON g_avoir.a_id =g_article.a_id
ORDER BY g_avoir.ord_id;
 
 
 SELECT 
    a_marque AS 'Marque',
    a_prix AS 'Prix',
    ROUND(AVG(a_prix),2) AS 'Prix Moyen Par Filtre',
    ROUND(AVG(a_prix) OVER (PARTITION BY a_marque), 2) AS 'Moyenne Par Marque'
FROM g_article
WHERE a_designation LIKE 'Filtre%'
GROUP BY a_marque;

SELECT 
    a_marque AS Marque,
    ROUND(AVG(a_prix) OVER (), 2) AS Prix_Moyen_Global,
    ROUND(AVG(a_prix) OVER (PARTITION BY a_marque), 2) AS Prix_Moyen_Par_Marque
FROM g_article
WHERE a_designation LIKE 'Filtre%'
ORDER BY a_marque;