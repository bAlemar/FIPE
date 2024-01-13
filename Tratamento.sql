-- Dropando a coluna Unnamed: 0

-- ALTER TABLE tabela_carros
-- DROP COLUMN " Unnamed: 0"

-- =============================//==================//===========================
-- Tratativa Preço dos Carros

-- SELECT
-- CAST(REPLACE(REPLACE(REPLACE("Preço Médio",'R$',''),'.',''),',','.') as NUMERIC) as din
-- from tabela_carros

-- =============================//==================//===========================
-- Extraindo Ano e Mês

-- SELECT
-- "Mês de referência:",
-- SUBSTRING("Mês de referência:",1,3) as Mês,
-- SUBSTRING("Mês de referência:",POSITION(' de ' in "Mês de referência:") +4) as Ano
-- FROM tabela_carros
-- =============================//==================//===========================

-- Extraindo Características do Carro

-- SELECT
-- "Modelo:",
-- SUBSTRING("Modelo:" FROM '[\d+]\.[\d+]'), -- Motor,
-- SUBSTRING("Modelo:" FROM '[\d]{1,2}[V|v]') -- Válvula
-- FROM tabela_carros

-- =============================//==================//===========================

-- Criando a tabela Final:
-- CREATE TABLE tabela_carros_formatada AS
-- SELECT
-- "Mês de referência:" as Data,
-- "Modelo:" as Modelo,
-- SUBSTRING("Mês de referência:",1,3) as Mês,
-- SUBSTRING("Mês de referência:",POSITION(' de ' in "Mês de referência:") +4) as Ano,
-- SUBSTRING("Modelo:" FROM '[\d+]\.[\d+]') as Motor, -- Motor,
-- SUBSTRING("Modelo:" FROM '[\d]{1,2}[V|v]') as Válvula, -- Válvula
-- CAST(REPLACE(REPLACE(REPLACE("Preço Médio",'R$',''),'.',''),',','.') as NUMERIC) as Valor
-- FROM tabela_carros


