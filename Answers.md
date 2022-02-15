# JAVA

4)  Si on ne met rien, le code ne fera **rien de "grave"** mais on ne pourra **pas savoir quelle exception** a été levée.
Si on ne met rien dans finally alors la **connexion à la base de donnée ne sera pas fermée**. On risque d'avoir une **saturation de connexions**.
    
5)  Le **code compile** mais génère une **erreur à l'execution**. Out of bound expection, index of array not found.

6)  Le code ne **compilera pas** car la variable tab est **appelée avant d'être déclarée**.

# SQL

1) ```sql
   SELECT COALESCE(COUNT(*), 0) FROM
   DEPARTEMENT LEFT JOIN DEP_ECOLE ON DEPARTEMENT.n = DEP_ECOLE.n_Departement
   LEFT JOIN ECOLE ON DEP_ECOLE.n_Ecole = ECOLE.n
   WHERE DEPARTEMENT.nom LIKE 'Ain';
   ```

2) ```sql
   SELECT ECOLE.nom FROM
   DEPARTEMENT LEFT JOIN DEP_ECOLE ON DEPARTEMENT.n = DEP_ECOLE.n_Departement
   LEFT JOIN ECOLE ON DEP_ECOLE.n_Ecole = ECOLE.n
   LEFT JOIN TYPE_ECOLE ON ECOLE.Type_ID = TYPE_ECOLE.Type_ID
   WHERE DEPARTEMENT.nom LIKE 'Ain'
   AND TYPE_ECOLE.Nom_Type LIKE 'Collège';
   ```
   
3) ```sql
   SELECT ECOLE.nom FROM 
   ECOLE LEFT JOIN TYPE_ECOLE ON ECOLE.Type_ID = TYPE_ECOLE.Type_ID
   WHERE TYPE_ECOLE.Nom_Type LIKE 'Collège';
   ```
   
4) ```sql
   SELECT COALESCE(SUM(ELEVE.Argent), 0) AS Money FROM 
   ECOLE LEFT JOIN ELEVE ON ECOLE.n = ELEVE.n_Ecole
   WHERE ECOLE.nom LIKE 'Collège Garde';
   ```
   
5) ```sql
   SELECT  ECOLE.nom, COALESCE(SUM(ELEVE.Argent), 0) AS Money FROM
   ECOLE LEFT JOIN ELEVE ON ECOLE.n = ELEVE.n_Ecole
   GROUP BY ECOLE.n;
   ```
