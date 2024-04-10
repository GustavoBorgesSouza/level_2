-- SCRIPT PARA POPULAR O BD IMPLANTACAO DE PROJETOS
-- ELIMINA O CONTEUDO DAS TABELAS 
/*
DELETE FROM T_SIP_IMPLANTACAO;
DELETE FROM T_SIP_PROJETO;
DELETE FROM T_SIP_DEPENDENTE;
DELETE FROM T_SIP_FUNCIONARIO;
DELETE FROM T_SIP_DEPARTAMENTO;
*/
-- POPULAR A TABELA DEPTO COM 5 DEPARTAMENTOS
INSERT INTO T_SIP_DEPARTAMENTO 
     VALUES (1, 'FINANCEIRO', 'FIN');
INSERT INTO T_SIP_DEPARTAMENTO 
     VALUES (2, 'TECNOLOGIA DA INFORMA��O','TIN');
INSERT INTO T_SIP_DEPARTAMENTO 
     VALUES (3, 'CONTAS A PAGAR','CPG');
INSERT INTO T_SIP_DEPARTAMENTO 
     VALUES (4, 'FATURAMENTO','FAT');
INSERT INTO T_SIP_DEPARTAMENTO 
     VALUES (5, 'RECURSOS HUMANOS', 'RHU');
-- POPULAR A TABELA FUNCIONARIO COM 3 FUNCIONARIOS PARA CADA DEPTO
-- DEPTO = 1
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12345, 1, 'JOAO DA SILVA', TO_DATE('10/05/1985','DD/MM/YYYY'), 
     TO_DATE('15/09/2012','DD/MM/YYYY'),'RUA X, 49', 5684.66);
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12346, 1, 'MANUEL DA SILVA', TO_DATE('05/10/1998','DD/MM/YYYY'), 
     TO_DATE('10/11/2015','DD/MM/YYYY'),'RUA X, 31', 3542.11);
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12347, 1, 'JANDIRA DA SILVA', TO_DATE('10/12/2000','DD/MM/YYYY'), 
     TO_DATE('15/09/2018','DD/MM/YYYY'),'RUA X, 25', 1875.96);
     
-- DEPTO = 2
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12348, 2, 'KATIA REGINA SOUZA', TO_DATE('15/01/1995','DD/MM/YYYY'), 
     TO_DATE('03/10/2015','DD/MM/YYYY'),'RUA Y, 49', 3894.63);
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12349, 2, 'MARIA DAS DORES SOUZA', TO_DATE('18/08/1983','DD/MM/YYYY'), 
    TO_DATE('23/10/2017','DD/MM/YYYY'),'RUA Y, 35', 1542.55);
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12350, 2, 'ALFREDO DE SOUZA', TO_DATE('04/05/1999','DD/MM/YYYY'), 
    TO_DATE('05/06/2014','DD/MM/YYYY'),'RUA Y, 27', 5874.52);
    
-- DEPTO = 3    
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12351, 3, 'GISELE DE JESUS', TO_DATE('15/04/1999','DD/MM/YYYY'), 
    TO_DATE('20/03/2017','DD/MM/YYYY'),'RUA Z, 49', 1360.66);    
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12352, 3, 'RAFAEL DE JESUS', TO_DATE('10/08/1998','DD/MM/YYYY'), 
    TO_DATE('10/08/2012','DD/MM/YYYY'),'RUA Z, 55', 2563.44);    
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12353, 3, 'ROSANA DE JESUS', TO_DATE('14/03/1987','DD/MM/YYYY'), 
    TO_DATE('15/08/2019','DD/MM/YYYY'),'RUA Z, 79', 4879.55);  
    
-- DEPTO = 4
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12354, 4, 'JOSEFINA DE ALMEIDA', TO_DATE('16/10/1997','DD/MM/YYYY'), 
    TO_DATE('25/03/2013','DD/MM/YYYY'),'RUA Y, 33', 4561.88);    
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12355, 4, 'LUCIANA DE ALMEIDA', TO_DATE('10/02/1984','DD/MM/YYYY'), 
    TO_DATE('28/09/2011','DD/MM/YYYY'),'RUA Y, 44', 2345.52);    
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12356, 4, 'THIAGO DE ALMEIDA', TO_DATE('10/03/1998','DD/MM/YYYY'), 
    TO_DATE('24/10/2018','DD/MM/YYYY'),'RUA Y, 55', 1254.22);    
    
-- DEPTO = 5
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12357, 5, 'LARISSSA DE CAMARGO', TO_DATE('14/02/1997','DD/MM/YYYY'), 
    TO_DATE('04/08/2015','DD/MM/YYYY'),'RUA V, 22', 1245.55);    
    
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12358, 5, 'ANTONIO DE CAMARGO', TO_DATE('25/01/1985','DD/MM/YYYY'), 
    TO_DATE('12/08/2016','DD/MM/YYYY'),'RUA V, 44', 2451.33);    
INSERT INTO T_SIP_FUNCIONARIO VALUES
    (12359, 5, 'JOSE DE CAMARGO', TO_DATE('23/10/1998','DD/MM/YYYY'), 
    TO_DATE('20/04/2017','DD/MM/YYYY'),'RUA V, 88', 6541.22);    
-- POPULAR A TABELA DEPENDENTE. ESCOLHER 3 FUNCIONARIOS E CADASTRAR 3 DEPENDENTES
-- PARA CADA FUNCIONARIO ESCOLHIDO
-- FUNCIONARIO = 12345
INSERT INTO T_SIP_DEPENDENTE VALUES
(12345, 1, 'JOANINHA', TO_DATE('12/10/2010','DD/MM/YYYY'));
INSERT INTO T_SIP_DEPENDENTE VALUES
(12345, 2, 'JULINHA', TO_DATE('15/10/2012','DD/MM/YYYY'));
INSERT INTO T_SIP_DEPENDENTE VALUES
(12345, 3, 'TONINHO', TO_DATE('22/10/2014','DD/MM/YYYY'));
-- FUNCIONARIO = 12356
INSERT INTO T_SIP_DEPENDENTE VALUES
(12356, 1,'JUNINHO', TO_DATE('02/10/2011','DD/MM/YYYY'));
INSERT INTO T_SIP_DEPENDENTE VALUES
(12356, 2, 'ZEZINHO', TO_DATE('15/10/2013','DD/MM/YYYY'));
INSERT INTO T_SIP_DEPENDENTE VALUES
(12356, 3, 'MARCELINHO', TO_DATE('17/10/2015','DD/MM/YYYY'));
-- FUNCIONARIO = 12359
INSERT INTO T_SIP_DEPENDENTE VALUES
(12359, 1,'MARIAZINHA', TO_DATE('11/06/2014','DD/MM/YYYY'));
INSERT INTO T_SIP_DEPENDENTE VALUES
(12359, 2,'LUIZINHA', TO_DATE('21/06/2016','DD/MM/YYYY'));
INSERT INTO T_SIP_DEPENDENTE VALUES
(12359, 3,'CARMINHA', TO_DATE('18/06/2018','DD/MM/YYYY'));
-- POPULAR A TABELA PROJETO COM 5 PROJETOS 
-- 3 PROJETOS SEM A DATA T�RMINO
INSERT INTO T_SIP_PROJETO VALUES 
(10001, 'PROJETO 1', TO_DATE('11/10/2016','DD/MM/YYYY'), NULL);
INSERT INTO T_SIP_PROJETO VALUES 
(10002, 'PROJETO 2', TO_DATE('25/10/2013','DD/MM/YYYY'), TO_DATE('15/04/2015','DD/MM/YYYY'));
INSERT INTO T_SIP_PROJETO VALUES 
(10003, 'PROJETO 3', TO_DATE('28/04/2012','DD/MM/YYYY'), NULL);
INSERT INTO T_SIP_PROJETO VALUES 
(10004, 'PROJETO 4', TO_DATE('25/03/2017','DD/MM/YYYY'), NULL);
INSERT INTO T_SIP_PROJETO VALUES 
(10005, 'PROJETO 5', TO_DATE('28/09/2014','DD/MM/YYYY'), TO_DATE('15/09/2018','DD/MM/YYYY'));
-- POPULAR A TABELA IMPLANTACAO 
-- PROJETO 1
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10001, 1, 12345, TO_DATE('11/10/2016','DD/MM/YYYY'), TO_DATE('15/09/2017','DD/MM/YYYY'));
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10001, 2, 12346, TO_DATE('11/10/2016','DD/MM/YYYY'), NULL);
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10001, 3, 12348, TO_DATE('11/10/2016','DD/MM/YYYY'), TO_DATE('25/06/2018','DD/MM/YYYY'));
-- PROJETO 2
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10002, 1, 12345, TO_DATE('25/10/2013','DD/MM/YYYY'), TO_DATE('15/04/2014','DD/MM/YYYY'));
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10002, 2, 12352, TO_DATE('25/10/2013','DD/MM/YYYY'), TO_DATE('25/07/2014','DD/MM/YYYY'));
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10002, 3, 12355, TO_DATE('25/10/2013','DD/MM/YYYY'), TO_DATE('15/04/2015','DD/MM/YYYY'));
-- PROJETO 3
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10003, 1, 12354, TO_DATE('28/04/2013','DD/MM/YYYY'), NULL);
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10003, 2, 12355, TO_DATE('28/04/2013','DD/MM/YYYY'), NULL);
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10003, 3, 12345, TO_DATE('28/04/2013','DD/MM/YYYY'), NULL);
-- PROJETO 4
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10004, 1, 12357, TO_DATE('25/03/2017','DD/MM/YYYY'), NULL);
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10004, 2, 12358, TO_DATE('25/03/2017','DD/MM/YYYY'), NULL);
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10004, 3, 12354, TO_DATE('25/03/2017','DD/MM/YYYY'), TO_DATE('15/08/2018','DD/MM/YYYY'));
-- PROJETO 5
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10005, 1, 12345, TO_DATE('28/09/2014','DD/MM/YYYY'), TO_DATE('15/09/2018','DD/MM/YYYY'));
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10005, 2, 12350, TO_DATE('28/09/2014','DD/MM/YYYY'), TO_DATE('15/09/2018','DD/MM/YYYY'));
INSERT INTO T_SIP_IMPLANTACAO VALUES 
(10005, 3, 12354, TO_DATE('28/09/2014','DD/MM/YYYY'), TO_DATE('15/09/2018','DD/MM/YYYY'));
-- CONSULTAR TABELAS
SELECT * FROM T_SIP_DEPARTAMENTO;
SELECT * FROM T_SIP_FUNCIONARIO;
SELECT * FROM T_SIP_DEPENDENTE;
SELECT * FROM T_SIP_PROJETO;
SELECT * FROM T_SIP_IMPLANTACAO;
--EFETIVAR AS TRANSA��ES PENDENTES
COMMIT;