-- Criando uma stored procedured simples

-- Ativando a saida do output
SET SERVEROUTPUT ON

-- Instanciando e nomeando a cria��o do procedure
CREATE PROCEDURE HELLO_WOLRD

-- Define a a��o a ser armazenada
AS 

-- Defini o inicio do bloco de codigo
BEGIN

-- Definindo uma a��o (Output - Mensagem)
DBMS_OUTPUT.PUT_LINE('OL� MUNDO RODONDINHO - MENIN�O AZUL !');

-- Define o final do bloco de codigo
END;
--------------------------------------------------------------------------------

-- Requisitando o procedimento armanenado
CALL HELLO_WOLRD();

--------------------------------------------------------------------------------
-- Criando um procedimento com elementos de input e output

-- Ativando a saida do output
SET SERVEROUTPUT ON

-- Criando ou reconfigurando procedimento
CREATE OR REPLACE PROCEDURE SP_QUADRADO
-- Introduzindo elemento de input iniciando com zero (0)
(P_NUM IN NUMBER :=0)
-- Defini o bloco de instru��o do procedimento ("AS" - Pode ser utilizado)
IS
BEGIN
DBMS_OUTPUT.PUT_LINE(P_NUM * 5);
END SP_QUADRADO;
/
EXECUTE SP_QUADRADO(10)
/
CALL SP_QUADRADO(5)
/
--------------------------------------------------------------------------------
-- Criando Procedure para UPDATE com parametros

-- Criando ou reconfigurando procedure
CREATE









SELECT * FROM MC_SGV_OCORRENCIA_SAC;



















