-- Listar todos os tipos de objetos criados que est�o conectados
SELECT DISTINCT OBJECT_TYPE 
FROM USER_OBJECTS
/
--------------------------------------------------------------------------------
-- Listando todos os tipos de objetos aos quais O USUARIO possui acesso
SELECT DISTINCT OBJECT_TYPE
FROM ALL_OBJECTS
/
--------------------------------------------------------------------------------
-- Listar todos os objetos do tipo Table
SELECT object_name
FROM user_objects
WHERE object_type ='TABLE'
ORDER BY object_name
/
--------------------------------------------------------------------------------
-- Listar todos os objetos do usuario com status de invalido
SELECT object_type, object_name
FROM user_objects
WHERE STATUS = 'INVALID'
ORDER BY object_type, object_name
/
--------------------------------------------------------------------------------
-- Listagem tipo de objeto, nome e data da ultima altera��o de todos os objetos
SELECT object_type, object_name, last_ddl_time
FROM user_objects
WHERE last_ddl_time >= TRUNC (SYSDATE)
ORDER BY object_type, object_name
/
--------------------------------------------------------------------------------
-- Listagem, nome do programa, n�mero da linha, c�digo-fonte da tabela DEPT
SELECT NAME, TYPE, LINE, TEXT
FROM USER_SOURCE
WHERE UPPER(TEXT)
LIKE '%DEPT%'
ORDER BY NAME, LINE
/
--------------------------------------------------------------------------------
-- Listagem, nome dos objetos, nome das fun��es e os procedimentos 
SELECT OBJECT_NAME, OBJECT_TYPE, PROCEDURE_NAME, AUTHID
FROM USER_PROCEDURES
ORDER BY OBJECT_NAME, PROCEDURE_NAME
/
--------------------------------------------------------------------------------
-- Listando informa��es sobre as triggers(gatilhos) desabilitados
SELECT * 
FROM USER_TRIGGERS
WHERE STATUS = 'DISABLED'
/
--------------------------------------------------------------------------------
-- Listando informa��es sobre as triggers(gatilhos) habilitado
SELECT * 
FROM USER_TRIGGERS
WHERE STATUS = 'ENABLED'
/
--------------------------------------------------------------------------------
-- Listar informa��es sobre todos os gatilhos associados � tabela EMP
SELECT * 
FROM USER_TRIGGERS
WHERE TABLE_NAME = 'EMP'
AND TRIGGER_TYPE 
LIKE '%EACH ROW'
/
--------------------------------------------------------------------------------
-- Informa��es sobre os gatilhos acionados quando uma atualiza��o � executada.
SELECT *
FROM user_triggers 
WHERE triggering_event LIKE '%UPDATE%'
/
--------------------------------------------------------------------------------
-- b)Limpe a tabela MC_SGV_OCORRENCIA_SAC;
DELETE FROM MC_SGV_OCORRENCIA_SAC;
-- c)Demonstre que a tabela est� vazia.
SELECT COUNT(*) AS "N� DE OCORRENCIAS" from MC_SGV_OCORRENCIA_SAC;



























