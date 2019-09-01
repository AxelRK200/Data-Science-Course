-- Afficher toute la table
SELECT * from PETSALE;

-- Afficher Prix de vente total 
select SUM(SALEPRICE) AS SUM_OF_SALEPRICE from PETSALE;

-- Afficher la quantité max vendue et correspondance
select ANIMAL, QUANTITY from PETSALE
where QUANTITY = (SELECT MAX(QUANTITY) from PETSALE) ;

-- Prix de vente moyen
select AVG(SALEPRICE) from PETSALE;

-- Prix de vente moyen unitaire chien
select AVG( SALEPRICE / QUANTITY ) from PETSALE where ANIMAL = 'Dog';

-- Prix de vente arrondis
select ROUND(SALEPRICE) from PETSALE;

-- taille texte par ligne animaux
select LENGTH(ANIMAL) from PETSALE;

-- Liste des animaux uniques en majuscules
select DISTINCT(UCASE(ANIMAL)) from PETSALE;

-- Liste des chats
select * from PETSALE where LCASE(ANIMAL) = 'cat';

-- Liste jours de vente des chats
select DATE(SALEDATE) from PETSALE where ANIMAL = 'Cat';

-- Nombre vendus en Mai
select COUNT(*) from PETSALE where MONTH(SALEDATE)='05';

-- Animaux et quantités vendus en Mai
select ANIMAL, QUANTITY from PETSALE where MONTH(SALEDATE)='05';

-- Date vente +3 jours
select (SALEDATE + 3 DAYS) from PETSALE;

-- Temps écoulé depuis vente (rappel résultat = nombre année(s) / mois / jour(s) )
select (CURRENT DATE - SALEDATE) from PETSALE;