-- CRIAÇÃO DO BANCO DE DADOS PARA EXEMPLIFICAR
-- FULL OUTER JOIN

-- CRIAÇÃO DA ESTRUTURA DO BANCO DE DADOS
/*
DROP TABLE T_SCA_EMPRESA_CONV CASCADE CONSTRAINT;
DROP TABLE T_SCA_ALUNO        CASCADE CONSTRAINT;
DROP TABLE t_sca_matricula    CASCADE CONSTRAINT;
*/

CREATE TABLE t_sca_aluno (
    cd_aluno       NUMBER(5) NOT NULL,
    nm_aluno       VARCHAR2(50) NOT NULL,
    nr_cpf         NUMBER(11) NOT NULL,
    nr_rg          NUMBER(10) NOT NULL,
    ds_endereco    VARCHAR2(100) NOT NULL,
    nr_telefone    NUMBER(11),
    ds_email       VARCHAR2(60),
    dt_nascimento  DATE NOT NULL,
    ds_genero      CHAR(2) NOT NULL
);

ALTER TABLE t_sca_aluno ADD CONSTRAINT pk_sca_aluno PRIMARY KEY ( cd_aluno );

CREATE TABLE t_sca_empresa_conv (
    cd_empresa_conv   NUMBER(4) NOT NULL,
    ds_razao_social   VARCHAR2(60) NOT NULL,
    nr_cnpj           NUMBER(15) NOT NULL,
    ds_endereco       VARCHAR2(100) NOT NULL,
    ds_url            VARCHAR2(60),
    ds_email          VARCHAR2(60),
    nr_telefone       NUMBER(11) NOT NULL,
    nm_contato        VARCHAR2(50) NOT NULL,
    qt_funcionario    NUMBER(4) NOT NULL,
    vl_perc_desconto  NUMBER(4, 1) NOT NULL
);

ALTER TABLE t_sca_empresa_conv ADD CONSTRAINT pk_sca_empresa_conv PRIMARY KEY ( cd_empresa_conv );

CREATE TABLE t_sca_matricula (
    nr_matricula_aluno      NUMBER(6) NOT NULL,
    cd_aluno                NUMBER(5) NOT NULL,
    cd_empresa_conv         NUMBER(4),
    dt_matricula            DATE NOT NULL,
    dt_cancelamento         DATE,
    ds_motivo_cancelamento  NUMBER(1)
);

ALTER TABLE t_sca_matricula ADD CONSTRAINT pk_sca_matricula PRIMARY KEY ( nr_matricula_aluno );

ALTER TABLE t_sca_matricula
    ADD CONSTRAINT fk_sca_matricula_aluno FOREIGN KEY ( cd_aluno )
        REFERENCES t_sca_aluno ( cd_aluno );

ALTER TABLE t_sca_matricula
    ADD CONSTRAINT fk_sca_matricula_empresa_conv FOREIGN KEY ( cd_empresa_conv )
        REFERENCES t_sca_empresa_conv ( cd_empresa_conv );



/*
DELETE FROM t_sca_empresa_conv;
DELETE FROM T_SCA_ALUNO;
DELETE FROM t_sca_matricula;
*/

-- INSERT´s PARA POPULAR AS TABELAS
INSERT INTO T_SCA_EMPRESA_CONV 
       ( cd_empresa_conv, ds_razao_social , nr_cnpj, ds_endereco, ds_url, ds_email, nr_telefone, nm_contato, qt_funcionario, vl_perc_desconto )
VALUES ( 1, 'EMPRESA XYZ LTDA.' , 12345678901, 'Rua X, 25', 'http://xyz.com.br','XYZ@XYZ.COM.BR', 12345789, 'MARIA APARECIDA',50, 3.5); 
   
INSERT INTO T_SCA_EMPRESA_CONV 
       ( cd_empresa_conv, ds_razao_social , nr_cnpj, ds_endereco, ds_url, ds_email, nr_telefone, nm_contato, qt_funcionario, vl_perc_desconto )
VALUES ( 2, 'EMPRESA ABC LTDA.' , 12345678912,'RUA Z, 49','HTTP://ABC.COM.BR','ABC@ABC.COM.BR', 12121121, 'JOAO XAVIER',520, 1.8);  
 
INSERT INTO T_SCA_EMPRESA_CONV 
       ( cd_empresa_conv, ds_razao_social , nr_cnpj, ds_endereco, ds_url, ds_email, nr_telefone, nm_contato, qt_funcionario, vl_perc_desconto )
VALUES ( 3, 'EMPRESA BCD LTDA.' , 12345678923,'RUA F, 45','HTTP://BCD.COM.BR','BCD@BCD.COM.BR', 31313331, 'CARMEM MIRANDA',85, 5.25);  
 
INSERT INTO T_SCA_EMPRESA_CONV 
       ( cd_empresa_conv, ds_razao_social , nr_cnpj, ds_endereco, ds_url, ds_email, nr_telefone, nm_contato, qt_funcionario, vl_perc_desconto )
VALUES ( 4, 'EMPRESA EFG LTDA.' , 12345678943,'RUA C, 59', 'HTTP://EFG.COM.BR','EFG@EFG.COM.BR', 43235686, 'DOMINGUINHOS',159, 3.9);  
 
COMMIT;

SELECT * FROM T_SCA_EMPRESA_CONV;


INSERT INTO T_SCA_ALUNO 
    ( CD_ALUNO, NM_ALUNO,NR_CPF, NR_RG,DS_ENDERECO, NR_TELEFONE, DS_EMAIL, DT_NASCIMENTO, DS_GENERO )
VALUES
    ( 12345, 'MARIA DAS FLORES', 125612345,12347890,'RUA X,77', 45629963 , 'MARIA@MARIA.COM.BR', TO_DATE('02/04/1985','DD/MM/YYYY'), 'M');

INSERT INTO T_SCA_ALUNO 
    ( CD_ALUNO, NM_ALUNO,NR_CPF, NR_RG,DS_ENDERECO, NR_TELEFONE, DS_EMAIL, DT_NASCIMENTO, DS_GENERO )
VALUES
    ( 12346,'JOÃO ROSA', 3223412345,32347890,'RUA, L 45', 945126321 , 'JOAO@JOAO.COM.BR', TO_DATE('12/04/1980','DD/MM/YYYY'),'H'); 
  
INSERT INTO T_SCA_ALUNO 
    ( CD_ALUNO, NM_ALUNO,NR_CPF, NR_RG,DS_ENDERECO, NR_TELEFONE, DS_EMAIL, DT_NASCIMENTO, DS_GENERO )
VALUES
    ( 12347, 'CAROLINA FERRAZ', 4223412345,42347890, 'RUA, K, 18', 945126354 , 'CAROLINA@CAROLINA.COM.BR', TO_DATE('27/09/1980','DD/MM/YYYY'),'F');
     
INSERT INTO T_SCA_ALUNO 
     ( CD_ALUNO, NM_ALUNO,NR_CPF, NR_RG,DS_ENDERECO, NR_TELEFONE, DS_EMAIL, DT_NASCIMENTO, DS_GENERO )
VALUES
    ( 12348, 'ROBERTO CARLOS', 5223452345,52345690,'RUA R, 89', 945123654 , 'ROBERTO@ROBERTO.COM.BR', TO_DATE('15/05/1990','DD/MM/YYYY'),'M'); 
 
INSERT INTO T_SCA_ALUNO 
     ( CD_ALUNO, NM_ALUNO,NR_CPF, NR_RG,DS_ENDERECO, NR_TELEFONE, DS_EMAIL, DT_NASCIMENTO, DS_GENERO )
VALUES
    ( 12349, 'SILVIO SANTOS', 6225612345,62345890,'RUA, A, 32',45623132 , 'SILVIO@SILVIO.COM.BR' , TO_DATE('19/11/1970','DD/MM/YYYY'),'M');
     
COMMIT;

SELECT * FROM T_SCA_ALUNO;


INSERT INTO T_SCA_MATRICULA
     (NR_MATRICULA_ALUNO , CD_ALUNO, CD_EMPRESA_CONV, DT_MATRICULA, DT_CANCELAMENTO, DS_MOTIVO_CANCELAMENTO)
VALUES
     (1001, 12345, 1, TO_DATE('02/10/2019','DD/MM/YYYY'), NULL, NULL );

INSERT INTO T_SCA_MATRICULA
     (NR_MATRICULA_ALUNO , CD_ALUNO, CD_EMPRESA_CONV, DT_MATRICULA, DT_CANCELAMENTO, DS_MOTIVO_CANCELAMENTO)
VALUES
     (1002, 12346, 1, TO_DATE('05/05/2017','DD/MM/YYYY'), NULL, NULL );

INSERT INTO T_SCA_MATRICULA
     (NR_MATRICULA_ALUNO , CD_ALUNO, CD_EMPRESA_CONV, DT_MATRICULA, DT_CANCELAMENTO, DS_MOTIVO_CANCELAMENTO)
VALUES
     (1003, 12347, 2, TO_DATE('01/02/2020','DD/MM/YYYY'), NULL, NULL );

INSERT INTO T_SCA_MATRICULA
     (NR_MATRICULA_ALUNO , CD_ALUNO, CD_EMPRESA_CONV, DT_MATRICULA, DT_CANCELAMENTO, DS_MOTIVO_CANCELAMENTO)
VALUES
     (1004, 12348, NULL, TO_DATE('15/09/2018','DD/MM/YYYY'), NULL, NULL ); 
    
INSERT INTO T_SCA_MATRICULA
     (NR_MATRICULA_ALUNO , CD_ALUNO, CD_EMPRESA_CONV, DT_MATRICULA, DT_CANCELAMENTO, DS_MOTIVO_CANCELAMENTO)
VALUES
     (1005, 12349, NULL, TO_DATE('17/03/2019','DD/MM/YYYY'), NULL, NULL );     

COMMIT;

SELECT * FROM T_SCA_MATRICULA;