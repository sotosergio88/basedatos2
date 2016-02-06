 CREATE TABLE DIRECCION (ID_DIRECCION INTEGER,
                        CALLE VARCHAR2(120),
                        NUMERO INTEGER,
                        COLONIA VARCHAR(120),
                        CONSTRAINT PK_ID_DIRECCION PRIMARY KEY(ID_DIRECCION)
                        );
                        
 CREATE TABLE CLIENTE (ID_CLIENTE INTEGER,
                        ID_DIRECCION INTEGER,
                        NOMBRE VARCHAR2(120),
                        EMAIL VARCHAR(70),
                        CONSTRAINT PK_ID_CLIENTE PRIMARY KEY(ID_CLIENTE),
                        CONSTRAINT PK1_ID_DIRECCION FOREIGN KEY(ID_DIRECCION) REFERENCES DIRECCION(ID_DIRECCION)
                        );
              ALTER TABLE [dbo].[DIRECCION]  WITH CHECK ADD  CONSTRAINT [FK_DIRECCION_CLIENTE] FOREIGN KEY([DIRECCION])
              REFERENCES [dbo].[DIRECCION] ([DIRECCION])
              GO
              ALTER TABLE [dbo].[DIRECCION] CHECK CONSTRAINT [FK_DIRECCION_CLIENTE]
              );
