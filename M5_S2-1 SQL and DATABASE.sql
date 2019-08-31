-- Employés dont l'adresse contient Elgin, IL
SELECT F_NAME, L_NAME from EMPLOYEES WHERE ADDRESS LIKE '%Elgin,IL';

-- Employés nés dans les années '70
SELECT F_NAME, L_NAME from EMPLOYEES WHERE B_DATE LIKE '197%';

-- Employés du département 5 avec salaire [60 000 - 70 000]
SELECT F_NAME, L_NAME from EMPLOYEES WHERE DEP_ID = 5 AND SALARY between 60000 and 70000;

-- Employés triés par ordre croissant ID Departement
SELECT F_NAME, L_NAME, DEP_ID from EMPLOYEES order by 3;

-- Employés triés par ordre décroissant ID Departement puis décroissant nom famille
SELECT L_NAME, F_NAME, DEP_ID from EMPLOYEES order by 3 desc, 1 desc;

-- Nombre d'employés par ID Departement
SELECT DEP_ID, count(DEP_ID) as NOMBRE_EMPLOYES from EMPLOYEES group by DEP_ID;

-- Nombre d'employés par ID Departement et salaire moyen
SELECT DEP_ID, count(DEP_ID) as NB_EMPLOYES, avg(SALARY) as SALAIRE_MOYEN from EMPLOYEES group by DEP_ID;

-- Nombre d'employés par ID Departement et salaire moyen, classé par salaire croissant
SELECT DEP_ID, count(DEP_ID) as NB_EMPLOYES, avg(SALARY) as SALAIRE_MOYEN from EMPLOYEES group by DEP_ID order by 3;

-- Nombre d'employés par ID Departement <4 et salaire moyen, classé par salaire croissant
SELECT DEP_ID, count(DEP_ID) as NB_EMPLOYES, avg(SALARY) as SALAIRE_MOYEN from EMPLOYEES group by DEP_ID having count(DEP_ID) < 4 order by 3;

-- Afficher les employés et mettre en correspondance leur ID DPT avec le nom réel de leur métier
SELECT NUMERO.DEP_NAME, NOM.L_NAME, NOM.F_NAME 
from EMPLOYEES as NOM , DEPARTMENTS as NUMERO
WHERE NOM.DEP_ID = NUMERO.DEPT_ID_DEP
order by NUMERO.DEP_NAME , NOM.L_NAME desc;