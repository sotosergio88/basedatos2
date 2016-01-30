 -- CREAREMOS UNA TABLA MUY SIMPLE PARA PROBAR EL PODER DE PL SQL
 
 CREATE TABLE DANCE(ID_DANCE INTEGER, NOMBRE VARCHAR2(40), EDAD INTEGER);
 --PRENDEMOS EL SERVIDOR EN MODO DE DESARROLLADOR
 SET SERVEROUTPUT ON; 
 -- VAMOS A EMPEZAR CON UN BLOQUE PL SQL
 DECLARE 
 -- AQUI SE DECLARAN LAS VARIABLES A USARSE
 EDAD INTEGER;
 YEARS INTEGER;
 BEGIN 
 -- AQUI VA LA LOGICA DE MI PROGRAMITA 
 YEARS:=22;
 EDAD:=YEARS*365;
 
 DBMS_OUTPUT.PUT_LINE('TU EDAD EN DIAS ES '||EDAD);
 
 END;
 /
 --CREAR UN BLOQUE QUE GENERE 200,000 REGISTROS EN SECUENCIA ASCENDENTE EN LA TABLA DANCE
 BEGIN 
  FOR I IN 1..200000 LOOP
  INSERT INTO DANCE VALUES(I,'CAMPOS',44);
    
 END LOOP;
  END;
  /
  --HACEMOS UN SELECT PARA VER QUE DIABLOS HIZO
  SELECT * FROM DANCE;
  
 --SISTEMITA DE PELICULAS LA DE SALA ES MI TAREA
 
 CREATE TABLE PELICULA (ID_PELICULA INTEGER,
                        TITULO VARCHAR2(120),
                        SINOPSIS VARCHAR2(500),
                        CLASIFICACION VARCHAR2(15),
                        CONSTRAINT PK_ID_PELICULA PRIMARY KEY(ID_PELICULA)
                        );
                        DESCRIBE PELICULA;
 CREATE TABLE HORARIOS (ID_HORARIO INTEGER,
                        ID_PELICULA INTEGER,
                        HORARIO VARCHAR2(8),
                        CONSTRAINT PK_ID_HORARIO PRIMARY KEY(ID_HORARIO),
                        CONSTRAINT PK1_ID_PELICULA FOREIGN KEY(ID_PELICULA) REFERENCES PELICULA(ID_PELICULA)
                        );
                        DESCRIBE HORARIOS;
 CREATE TABLE SALAS (ID_SALA INTEGER,
                        ID_PELICULA INTEGER,
                        ID_HORARIO INTEGER,
                        COMENTARIOS VARCHAR2(120),
                        CONSTRAINT PK_ID_SALA PRIMARY KEY(ID_SALA),
                        CONSTRAINT PK1_ID_PELICULA FOREIGN KEY(ID_PELICULA) REFERENCES PELICULA(ID_PELICULA),
                        CONSTRAINT PK2_ID_HORARIO FOREIGN KEY(ID_HORARIO) REFERENCES HORARIOS(ID_HORARIO)
                        );
                        CREATE SEQUENCE sec_pelicula
                    start with 1
                    increment by 1
                    nomaxvalue;
                     SET SERVEROUTPUT ON;
                    
                    CREATE OR REPLACE PROCEDURE HOLA_MUNDO(NOMBRE IN VARCHAR2)
                    AS
                    BEGIN
                    --AQUI VA LA LOGICA
                    DBMS_OUTPUT.PUT_LINE('HOLA COMO ESTAS '||NOMBRE);
                    END;
                    /
                    BEGIN
                    HOLA_MUNDO('SERGIO ENRIQUE');
                    END;
                    /
                    DECLARE
                    VALOR NUMBER;
                    BEGIN
                    SUMA(12,8,VALOR);
                    DBMS_OUTPUT.PUT_LINE('LA SUMA ES'||VALOR);
                    END;
                    /
