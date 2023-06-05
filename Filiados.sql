CREATE DATABASE bdPartidoPTC

USE bdPartidoPTC

SELECT * FROM filiadosPTC

--1)	Apresentar todos os filiados cujo nome comece com o Nome “ANTONIO”
SELECT * FROM filiadosPTC WHERE nomeFiliado LIKE 'Antonio%'

--2)	Apresente o nome de todos os filiados que contenham “Sebastião” como sobrenome.
SELECT * FROM filiadosPTC WHERE nomeFiliado LIKE '%Sebastiao'

--3)	Apresentar todos os filiados cujo nome comece com o Nome “OS”.
SELECT * FROM filiadosPTC WHERE nomeFiliado LIKE 'Os%'	

--4)	Apresente o nome de todos os filiados que moram no município de “São Felix”.’	
SELECT nomeFiliado, nomeMunicipio FROM filiadosPTC WHERE nomeMunicipio LIKE '%LIX'

--5)	Apresente o nome de todos os filiados que moram no município “Inhambupe”.
SELECT nomeFiliado, nomeMunicipio FROM filiadosPTC WHERE nomeMunicipio LIKE 'Inhambupe%'

--6)	Apresente o nome dos municípios que comecem com o nome “SANTA”
SELECT nomeFiliado, nomeMunicipio FROM filiadosPTC WHERE nomeMunicipio LIKE 'SANTA%'

--7)	Apresente o nome dos municípios que comecem com a letra “E”
SELECT nomeFiliado, nomeMunicipio FROM filiadosPTC WHERE nomeMunicipio LIKE 'E%'

--8)	Apresente o nome dos municípios que contenha “Cruz” em seu nome.
SELECT nomeFiliado, nomeMunicipio FROM filiadosPTC WHERE nomeMunicipio LIKE '%Cruz%'

--9)	Apresente o nome dos municípios que contenha “De ” em seu nome.
SELECT nomeFiliado, nomeMunicipio FROM filiadosPTC WHERE nomeMunicipio LIKE '%De%'

--10)	Exiba todos os filiados cadastrados entre 01/01/1990 e 01/01/2000.
SELECT nomeFiliado FROM filiadosPTC WHERE dataFiliacao BETWEEN '01-01-1990' AND '01-01-2000'

--11)	Exiba todos os filiados cadastrados entre 02/01/2010 e 01/03/2010.
SELECT nomeFiliado FROM filiadosPTC WHERE dataFiliacao BETWEEN '02-01-2010' AND '01-03-2010'

--12)	Realize uma busca em que exiba os cadastrados ao partido PTC no 2º de 2007.
SELECT nomeFiliado FROM filiadosPTC WHERE dataFiliacao BETWEEN '01-07-2007' AND '31-12-2007'

--13)	Apresente o cadastro de todos os filiados que estão com a situação do registro regularizado.
SELECT codInscricao FROM filiadosPTC WHERE situacaoRegistro LIKE 'R%' 

--14)	Encontre todos os filiados cadastros na zona eleitoral “203”.
SELECT nomeFiliado, zonaEleitoral FROM filiadosPTC WHERE (zonaEleitoral) = 203  

--15)	Encontre todos os filiados cadastros na zona eleitoral “180”.
SELECT nomeFiliado, zonaEleitoral FROM filiadosPTC WHERE (zonaEleitoral) = 180 

--16)	Encontre todos os filiados cadastros na zona eleitoral “199”.
SELECT nomeFiliado, zonaEleitoral FROM filiadosPTC WHERE (zonaEleitoral) = 199

--17)	Apresente o número da maior zona eleitoral.
SELECT MAX (zonaEleitoral) FROM filiadosPTC

--18)	Apresente número da menor da zona eleitoral
SELECT MIN (zonaEleitoral) FROM filiadosPTC

--19)	Atualize a sigla do partido PTC para PT para todos os filiados do município de código “36471”.
UPDATE filiadosPTC SET siglaPartido = 'PT' WHERE (codigoMunicipio) = 36471
--Verificação
SELECT siglaPartido, codigoMunicipio FROM filiadosPTC WHERE (codigoMunicipio) = 36471

--20)	Atualize a sigla do partido PTC para PMDB para todos os filiados do município de código “38490”.
UPDATE filiadosPTC SET siglaPartido = 'PMDB' WHERE (codigoMunicipio) = 38490
--Verificação
SELECT siglaPartido, codigoMunicipio FROM filiadosPTC WHERE (codigoMunicipio) = 38490

--21)	Atualize a sigla do partido PTC para PC para todos os filiados do município de “SANTANÓPOLIS”.
UPDATE filiadosPTC SET siglaPartido = 'PC' WHERE nomeMunicipio LIKE 'SAN%POLIS'
--Verificação
SELECT siglaPartido, nomeMunicipio FROM filiadosPTC WHERE nomeMunicipio LIKE 'SAN%POLIS'

--22)	Atualizar a sigla do partido PTC para PV e nome do Partido trabalhista Cristão para Partido Verde dos Filiados do município de “São Félix”.
UPDATE filiadosPTC SET siglaPartido = 'PV', nomePartido = 'PARTIDO VERDE' WHERE nomeMunicipio LIKE 'S%LIX'
--Verificação
SELECT siglaPartido, nomePartido, nomeMunicipio FROM filiadosPTC WHERE nomeMunicipio LIKE 'S%LIX'

-- 23)	  Atualizar a sigla do partido PTC para PSDB e nome do Partido Trabalhista Cristão para Partido da Social Democracia Brasileira de todos os filiados do município de “ENCRUZILHADA”.
UPDATE filiadosPTC SET siglaPartido = 'PSDB', nomePartido = 'PARTIDO SOCIAL DEMOCRACIA BRASILEIRA' WHERE nomeMunicipio LIKE 'ENCRUZILHADA'
--Verificação
SELECT siglaPartido, nomePartido, nomeMunicipio FROM filiadosPTC WHERE nomeMunicipio LIKE 'ENCRUZILHADA'

--24)	Atualize o nome do filiado: “JORGE LUIS FERREIRA DOS SANTOS” para “JORGE LUIS MAGALHÃES DOS SANTOS
UPDATE filiadosPTC SET nomeFiliado = 'JORGE LUIS MAGALHÃES DOS SANTOS' WHERE nomeFiliado LIKE 'JORGE LUIS FERREIRA DOS SANTOS'

--25)	Atualize o nome da filiada: “BENTA XAVIER RODRIGUES” para “RENATA XAVIER RODRIGUES.
UPDATE filiadosPTC SET nomeFiliado = 'RENATA XAVIER RODRIGUES' WHERE nomeFiliado LIKE 'BENTA XAVIER RODRIGUES'

--26)	Atualize o nome do filiado: “NOE LEITE DA SILVA” para “NOEL LEITE DA SILVA”
UPDATE filiadosPTC SET nomeFiliado = 'NOEL LEITE DA SILVA' WHERE nomeFiliado LIKE 'NOE LEITE DA SILVA'

--27)	Mude a situação do registro de JOSIENE ANDRADE DE SOUZA mude de JUB_JUDICE para REGULAR.
UPDATE filiadosPTC SET situacaoRegistro = 'REGULAR' WHERE nomeFiliado LIKE 'JOSIENE ANDRADE DE SOUZA'
--Verificação
SELECT nomeFiliado, situacaoRegistro FROM filiadosPTC WHERE nomeFiliado LIKE 'JOSIENE ANDRADE DE SOUZA'

--28)	Mude a situação do registro de ELIEL ALMEIDA SILVA, mude de DESFILIADO para REGULAR.
UPDATE filiadosPTC SET situacaoRegistro = 'REGULAR' WHERE nomeFiliado LIKE 'ELIEL ALMEIDA SILVA'
--Verificação
SELECT nomeFiliado, situacaoRegistro FROM filiadosPTC WHERE nomeFiliado LIKE 'ELIEL ALMEIDA SILVA'

--29)	Mude a situação do registro de ALINE DE SOUZA, mude de REGULAR para DESFILIADO.
UPDATE filiadosPTC SET situacaoRegistro = 'DESFILIADO' WHERE nomeFiliado LIKE 'ALINE DE SOUZA'
--Verificação
SELECT nomeFiliado, situacaoRegistro FROM filiadosPTC WHERE nomeFiliado LIKE 'ALINE DE SOUZA'

--30)	Adicione à tabela o campo Sexo (com tipo char).
ALTER TABLE filiadosPTC ADD sexo CHAR

SELECT * FROM filiadosPTC