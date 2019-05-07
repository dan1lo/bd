-- salve o engano, todos os comandos estão em ordem dos slide.


--Select – Estrutura básica

-- busca tudo na tabela
SELECT * FROM ENFEITES
-- busca somente as colunas nome e cor

SELECT nome, cor FROM enfeites;

-------
select * from enfeites
-- busca todas as colunas na tabela enfeite onde os enfeites tenham o tamanho 5
SELECT * FROM enfeites WHERE tamanho = 5;

--Operador de igual (=)
SELECT cor FROM enfeites WHERE tamanho = 2;
SELECT nome FROM enfeites WHERE nome = 'arvore': -- podemos usar mas nao é recomendavel usar o = com string
--Operador de diferente (<>)
SELECT tamanho FROM enfeites WHERE valor <> 3;
--Operador de Maior (>) ou menor (<)
SELECT * FROM enfeites WHERE valor < 3;
--Operador de  maior igual (>=) ou menor igual (<=) 
SELECT id FROM enfeites WHERE valor >= 2;
--Operador Like (%)
SELECT * FROM enfeites WHERE cor LIKE 'ver%';
SELECT * FROM enfeites WHERE cor LIKE '%e ';
SELECT * FROM enfeites WHERE cor LIKE '%o%';
SELECT * FROM enfeites WHERE cor ILIKE '%VER';

-- orderby ordenar os resultados
--ASC - menor para o maior (1,2,3,4,20)
--DESC - maior para o menor (20,4,3,2,1

SELECT nome FROM enfeites ORDER BY tamanho DESC;

SELECT * FROM enfeites WHERE cor like ’vermelho’ ORDER BY id DESC; -- estou ordenando os enfeits vermelhos pelo id do maior para o menor

--between
-- comando between é entre dois valores

SELECT * FROM enfeites WHERE
valor BETWEEN 4 AND 10;


-- limit
-- comando limite é limitando o numero de resultados
SELECT nome FROM enfeites LIMIT 3;
-- ou seja, pode ter 1000 enfeites, mas só vai voltar os 3 primeiros na ordem que o bd estabelecer
SELECT nome FROM enfeites ORDER BY  valor DESC LIMIT 2;
-- aqui volta os dois primeiros com maior valor 


-- posso usar operacçoes

SELECT nome, salario*2 FROM farmaceuticos
SELECT nome, salario+2 FROM farmaceuticos
SELECT nome, salario-2 FROM farmaceuticos
SELECT nome, salario/2 FROM farmaceuticos

-- aqui eu dou um apelido para o calculo, e a coluna vai se chamar metade 
SELECT nome, salario/2 as metade FROM farmaceuticos



-- funcoes agregativas

--media do salario dos farmaceuticos avg(campo)
SELECT avg(salario) as media_salario FROM farmaceuticos;


-- contar quantos tem count (campo)
SELECT       count(id) FROM farmaceuticos;

SELECT       count(id) FROM farmaceuticos WHERE salario>600;

-- distinct = diferntes

-- quantos nomes diferentes...
SELECT      distinct(nome) FROM farmaceuticos;


-- MAX = VALOR MAXIMO

--MAIOR SALARIO

SELECT      MAX(SALARIO) FROM farmaceuticos;


-- MIN = MENOR

SELECT      Min(SALARIO) FROM farmaceuticos;


-- SUM = SOMA DE TODOS

SELECT      sum(SALARIO) FROM farmaceuticos;












