DROP TABLE AVION CASCADE CONSTRAINTS;
DROP TABLE TRAJET CASCADE CONSTRAINTS;
DROP TABLE PILOTE CASCADE CONSTRAINTS;
DROP TABLE Avion_En_Revision CASCADE CONSTRAINTS;

CREATE TABLE AVION
   (
    NumAvion NUMBER(4)  NOT NULL,
	  NomAvion VARCHAR2(20)  NOT NULL,
    Capacite NUMBER(5),
    Localisation VARCHAR2(20),
	  HeuresDeVol NUMBER(5) DEFAULT 0,
    CONSTRAINT PK_AVION PRIMARY KEY (NumAvion)  
   ) ;

CREATE TABLE PILOTE
   (
    NumPilote NUMBER(4)  NOT NULL,
    NomPilote VARCHAR2(20)  NOT NULL,
    PrenomPilote VARCHAR2(20)  NOT NULL,
    Ville VARCHAR2(20),
    Salaire NUMBER(6),
    CONSTRAINT PK_EMPLOYE PRIMARY KEY (NumPilote)  
   ) ;

CREATE TABLE TRAJET
   (
    NumTrajet NUMBER(4) NOT NULL,
    NumPilote NUMBER(4) NOT NULL,
    NumAvion NUMBER(4) NOT NULL,
    VilleDep VARCHAR2(20),
    VilleArr VARCHAR2(20),
    DateDep DATE,
    DateArr DATE,
    CONSTRAINT PK_TRAJET PRIMARY KEY (NumTrajet),
    CONSTRAINT FK_TRAJET_PILOTE  FOREIGN KEY (NumPilote)  REFERENCES PILOTE (NumPilote),
    CONSTRAINT FK_TRAJET_AVION  FOREIGN KEY (NumAvion)  REFERENCES AVION (NumAvion)    
   ) ;
   
insert into AVION values(123, 'A300', 300, 'Nice', 200);
insert into AVION values(234, 'A310', 320, 'Nice', 50);
insert into AVION values(345, 'A300', 300, 'Lyon', 25);
insert into AVION values(456, 'A380', 750, 'Paris', 30);
insert into AVION values(567, 'B747', 350, 'Paris', 500);
insert into AVION values(678, 'B707', 340, 'Paris', 200);
insert into AVION values(789, 'A310', 300, 'Toulouse', 120);
insert into AVION values(890, 'A310', 310, 'Lyon', 500);
insert into AVION values(901, 'A380', 750, 'Lyon', 1200);
insert into AVION values(012, 'A380', 780, 'Paris', 500);
   
insert into PILOTE values(1, 'NEMARD', 'Jean', 'Paris', 2100);
insert into PILOTE values(2, 'AROIDE', 'Paul', 'Toulouse', 2100);
insert into PILOTE values(3, 'HAUDUVILLAGE', 'Lidye', 'Nice', 2100);
insert into PILOTE values(4, 'BIDJOBAT', 'Joe', 'Toulouse', 2150);
insert into PILOTE values(5, 'PLOUE DE BRIERES', 'Roger', 'Paris', 2000);
insert into PILOTE values(6, 'MEURDESOIF', 'Jean', 'Paris', 1900);
insert into PILOTE values(7, 'RENAUT', 'Megane', 'Brest', 1820);
insert into PILOTE values(8, 'DIOT', 'Kelly', 'Paris', 3300);
insert into PILOTE values(9, 'PROVISTE', 'Alain', 'Dijon', 5000);
insert into PILOTE values(10, 'COURCI', 'Sarah', 'Paris', 1360);

insert into TRAJET values(1, 1, 123, 'Nice', 'Toulouse', TO_DATE('18/03/2014 08:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 10:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(2, 1, 890, 'Paris', 'Toulouse', TO_DATE('18/03/2014 18:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 20:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(3, 2, 123, 'Toulouse', 'Lyon', TO_DATE('18/03/2014 14:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 16:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(4, 5, 345, 'Toulouse', 'Lyon', TO_DATE('18/03/2014 18:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 20:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(5, 9, 123, 'Paris', 'Nice', TO_DATE('18/03/2014 11:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 12:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(6, 10, 234, 'Lyon', 'Nice', TO_DATE('18/03/2014 11:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 12:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(7, 1, 456, 'Paris', 'Lyon', TO_DATE('18/03/2014 08:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 09:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(8, 8, 456, 'Nice', 'Paris', TO_DATE('18/03/2014 07:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 08:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(9, 1, 890, 'Nantes', 'Lyon', TO_DATE('18/03/2014 09:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 15:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(10, 8, 234, 'Nice', 'Paris', TO_DATE('18/03/2014 12:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 13:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(11, 9, 234, 'Paris', 'Lyon', TO_DATE('18/03/2014 15:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 16:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(12, 1, 234, 'Lyon', 'Nantes', TO_DATE('18/03/2014 16:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 20:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(13, 4, 567, 'Nice', 'Lens', TO_DATE('18/03/2014 11:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 14:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(14, 3, 567, 'Lens', 'Paris', TO_DATE('18/03/2014 15:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 16:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(15, 8, 901, 'Paris', 'Toulouse', TO_DATE('18/03/2014 17:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 18:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(16, 7, 567, 'Paris', 'Toulouse', TO_DATE('18/03/2014 18:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 19:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(17, 5, 890, 'Bordeaux', 'Clermont-Fd', TO_DATE('18/03/2014 21:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 22:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(18, 10, 789, 'Paris', 'Lille', TO_DATE('18/03/2014 11:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2014 12:00','DD/MM/YYYY HH24:MI'));


/*Partie1*/
/*1*/
CREATE TABLE Avion_En_Revision AS (
SELECT *
FROM Avion);

DELETE
FROM Avion_En_Revision;

ALTER TABLE Avion_En_Revision
ADD CONSTRAINT Pk_Avion_En_Revision PRIMARY KEY (numAvion);

/*2*/
SELECT *
FROM Avion
WHERE Avion.heuresdevol = (SELECT MAX(Avion.heuresdevol)
                          FROM Avion);

/*3*/
ALTER TABLE Trajet
DISABLE CONSTRAINT Fk_Trajet_Avion;
/
/*a*/
SET SERVEROUTPUT ON
DECLARE
  l_avionHeuresdevol Avion%ROWTYPE;
BEGIN
  SELECT *
  INTO l_avionHeuresdevol
  FROM Avion
  WHERE Avion.heuresdevol = (SELECT MAX(Avion.heuresdevol)
                          FROM Avion);
  /*b*/
  DBMS_OUTPUT.PUT_LINE('L''avion ' || l_avionHeuresdevol.numAvion || ' va en révision');
  /*c*/
  INSERT INTO Avion_En_Revision VALUES l_avionHeuresdevol;
  DELETE
  FROM Avion
  WHERE Avion.numAvion = l_avionHeuresdevol.numAvion;
/*4*/
EXCEPTION
  /*a*/
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Il y a plusieurs avion avec un même nombres maximal d''heures de vol.');
  /*b*/
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Il n''y a aucun avion.');
  /*c*/
  WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE(l_avionHeuresdevol.numAvion || 'déjà utilisé.');
END;
/

/*a PLusieurs ligne à 500*/
SELECT heuresdevol
FROM avion;
/*b Aucune ligne*/
DELETE
FROM Avion;
/
/*c Ajout d'une ligne avec un identifiant existant*/
INSERT INTO Avion_En_Revision VALUES (901, 'A380', 750, 'Lyon', 1200);
/

/*5*/
SET SERVEROUTPUT ON
DECLARE
  l_avionHeuresdevol Avion%ROWTYPE;
  e_zeroHeure EXCEPTION; 
BEGIN
  SELECT *
  INTO l_avionHeuresdevol
  FROM Avion
  WHERE Avion.heuresdevol = (SELECT MAX(Avion.heuresdevol)
                          FROM Avion);
  IF (l_avionHeuresdevol.heuresdevol = 0) THEN RAISE e_zeroHeure;
  END IF;
  /*b*/
  DBMS_OUTPUT.PUT_LINE('L''avion ' || l_avionHeuresdevol.numAvion || ' va en révision');
  /*c*/
  INSERT INTO Avion_En_Revision VALUES l_avionHeuresdevol;
  DELETE
  FROM Avion
  WHERE Avion.numAvion = l_avionHeuresdevol.numAvion;
/*4*/
EXCEPTION
  /*a*/
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Il y a plusieurs avion avec un même nombres maximal d''heures de vol.');
  /*b*/
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Il n''y a aucun avion.');
  /*c*/
  WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE(l_avionHeuresdevol.numAvion || 'déjà utilisé.');
  WHEN e_zeroHeure THEN
    DBMS_OUTPUT.PUT_LINE(l_avionHeuresdevol.numAvion || 'a zéro heure de vol.');
END;
/

/*5 Insertion d'une ligne avec 0 heures de vol après suppresion des autres avion. 0 est donc le maximum.*/
DELETE
FROM Avion;
INSERT INTO Avion_En_Revision VALUES (901, 'A380', 750, 'Lyon', 0);
/

/*6*/
ALTER TABLE Trajet
ENABLE CONSTRAINT Fk_Trajet_Avion;
/

SET SERVEROUTPUT ON
DECLARE
  l_avionHeuresdevol Avion%ROWTYPE;
  e_zeroHeure EXCEPTION;
  e_avionTrajet EXCEPTION;
  PRAGMA EXCEPTION_INIT(e_avionTrajet, -20000);
BEGIN
  SELECT *
  INTO l_avionHeuresdevol
  FROM Avion
  WHERE Avion.heuresdevol = (SELECT MAX(Avion.heuresdevol)
                          FROM Avion);
  IF (l_avionHeuresdevol.heuresdevol = 0) THEN RAISE e_zeroHeure;
  END IF;
  IF (l.AvionHeuresdevol.numAvion IN Trajet.numAvion) THEN
  RAISE_APPLICATION_ERROR(-20000, 'Avion impliqué dasn un trajet.');
  END IF;
  /*b*/
  DBMS_OUTPUT.PUT_LINE('L''avion ' || l_avionHeuresdevol.numAvion || ' va en révision');
  /*c*/
  INSERT INTO Avion_En_Revision VALUES l_avionHeuresdevol;
  DELETE
  FROM Avion
  WHERE Avion.numAvion = l_avionHeuresdevol.numAvion;
/*4*/
EXCEPTION
  /*a*/
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Il y a plusieurs avion avec un même nombres maximal d''heures de vol.');
  /*b*/
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Il n''y a aucun avion.');
  /*c*/
  WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE(l_avionHeuresdevol.numAvion || 'déjà utilisé.');
  WHEN e_zeroHeure THEN
    DBMS_OUTPUT.PUT_LINE(l_avionHeuresdevol.numAvion || 'a zéro heure de vol.');
  WHEN e_avionTrajet THEN
    SQLCODE(-20100);
    SQLERRM('Avion impliqué dasn un trajet.');
END;
/

/*6 Version corrigée*/
ALTER TABLE Trajet
ENABLE CONSTRAINT Fk_Trajet_Avion;
/

SET SERVEROUTPUT ON
DECLARE
  l_avionHeuresdevol Avion%ROWTYPE;
  e_zeroHeure EXCEPTION;
BEGIN
  SELECT *
  INTO l_avionHeuresdevol
  FROM Avion
  WHERE Avion.heuresdevol = (SELECT MAX(Avion.heuresdevol)
                          FROM Avion);
  IF (l_avionHeuresdevol.heuresdevol = 0) THEN RAISE e_zeroHeure;
  END IF;
  /*b*/
  DBMS_OUTPUT.PUT_LINE('L''avion ' || l_avionHeuresdevol.numAvion || ' va en révision');
  /*c*/
  INSERT INTO Avion_En_Revision VALUES l_avionHeuresdevol;
  DELETE
  FROM Avion
  WHERE Avion.numAvion = l_avionHeuresdevol.numAvion;
/*4*/
EXCEPTION
  /*a*/
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Il y a plusieurs avion avec un même nombres maximal d''heures de vol.');
  /*b*/
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Il n''y a aucun avion.');
  /*c*/
  WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE(l_avionHeuresdevol.numAvion || 'déjà utilisé.');
  WHEN e_zeroHeure THEN
    DBMS_OUTPUT.PUT_LINE(l_avionHeuresdevol.numAvion || 'a zéro heure de vol.');
  WHEN OTHERS THEN
    IF (SQLCODE = -02592) THEN
      DBMS_OUTPUT.PUT_LINE('Avion impliqué dasn un trajet.');
    ELSE
      DBMS_OUTPUT.PUT_LINE('Erreur Oracle ' || SQLERRM || '(' || SQLCODE || ')');
    END IF;
END;
/

/*Partie 2*/
/*1*/
DECLARE 
  TYPE t_string_tab /*varray*/
  IS TABLE OF VARCHAR2(15);
  l_tab_fruit t_string_tab;
  e_uninitCollection EXCEPTION;
  PRAGMA EXCEPTION_INIT(e_uninitCollection, -06531);
BEGIN
  l_tab_fruit := t_string_tab('raisin','pomme','poire','banane');
  --DBMS_OUTPUT.PUT('val (null) = ' || l_tab_fruit(null));
  --DBMS_OUTPUT.PUT('val (''A'') = ' || l_tab_fruit('A'));
  --DBMS_OUTPUT.PUT('val (0) = ' || l_tab_fruit(0));
  --l_tab_fruit(5) := 'orange';

 -- Affichage du tableau
  DBMS_OUTPUT.PUT('Les fruits : ') ;
  FOR i IN 1 ..l_tab_fruit.count LOOP
    DBMS_OUTPUT.PUT(l_tab_fruit(i) || ' | ') ;
  END LOOP;
  DBMS_OUTPUT.NEW_LINE;
EXCEPTION
  WHEN e_uninitCollection THEN
    DBMS_OUTPUT.PUT_LINE('La collection n''a pas été initialisée.');
  /*
  WHEN COLLECTION_IS_NULL THEN
    DBMS_OUTPUT.PUT_LINE('La collection n''a pas été initialisée.');
  */
  WHEN VALUE_ERROR THEN
    DBMS_OUTPUT.PUT_LINE('Erreur de valeur.');
  WHEN SUBSCRIPT_OUTSIDE_LIMIT THEN
    DBMS_OUTPUT.PUT_LINE('L''index utilisé est en dehors du champs légal du nested table ou du varray.');
  WHEN SUBSCRIPT_BEYOND_COUNT THEN
    DBMS_OUTPUT.PUT_LINE('L''index utilisé est supérieur au nombre d''éléments du nested table ou du varray.');
END;
/

/*2 La collection est initialisé : pas d'erreur.*/
/*3 Les varrays sont numérotés par des entiers. l_tab_fruit(null) : null(valeur n'est pas connue) n'est pas un entier. */
/*4 Les varrays sont numérotés par des entiers. Le caractère 'A' nest pas un entier.*/
/*5 Les varrays sont numérotés par des entiers de 1 à une valeur fixé. Donc l_tab_fruit(0) est outside the legal range.*/
/*6 l_tab_fruit(5) n'existe pas.*/


/*Partie 3*/
/*1*/
DECLARE
  TYPE t_string_tab /*index table*/
  IS TABLE OF VARCHAR2(15) INDEX BY BINARY_INTEGER;
  l_tab_fruit t_string_tab;
BEGIN
  /* Code à décommenter selon les instructions */
  /*l_tab_fruit(1) := 'raisin';
  l_tab_fruit(2) := 'pomme';
  l_tab_fruit(3) := 'poire';
  l_tab_fruit(4) := 'banane';*/

  --DBMS_OUTPUT.PUT('val (0) = ' || l_tab_fruit(0));
  --DBMS_OUTPUT.PUT('val (''A'') = ' || l_tab_fruit('A'));
  --DBMS_OUTPUT.PUT('val (null) = ' || l_tab_fruit(null));
  -- Affichage du tableau
  DBMS_OUTPUT.PUT('Les fruits : ') ;
  FOR i IN 1 ..l_tab_fruit.count LOOP
  DBMS_OUTPUT.PUT(l_tab_fruit(i) || ' | ') ;
  END LOOP;
  DBMS_OUTPUT.NEW_LINE;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Pas de données à cet index.');
  WHEN VALUE_ERROR THEN
    DBMS_OUTPUT.PUT_LINE('Erreur de valeur.');
END;
/

/*1 Ici, l_tab_fruit est un tableau indexé par des entiers pas un varray.
Si on exécute le bloc directement, il n'y pas d'erreur car un tableau indexé n'a pas besoin d'être initialisé.*/

/*2
- Un tableau indexé n'a pas besoin d'être initialisé.
- Un tableau indexé n'a pas de borne. Donc l_tab_fruit(0) a du sens mais ne contient aucune donnée.
- l_tab_fruit('A') provoque la même erreur car le tableau est indexé par des entier (INDEX BY BINARY_INTEGER) pas par des caractères.
- l_tab_fruit(null provoque la même erreur) car le tableau est indexé par des entier (INDEX BY BINARY_INTEGER). L'index de null n'a pas de sens.
  Un indexed table non initialisé contient null mais est indexé pas des entiers.*/