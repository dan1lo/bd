-- script para criar tabelas de exemplo da aula de select


CREATE TABLE enfeites (
	id serial,
	nome text,
	cor text,
	tamanho int,
	valor real,
	primary key(id)

);


CREATE TABLE farmaceuticos (
	cpf int,
	cpf_gerente int,
	nome text,
	salario real,
	primary key (cpf),
	foreign key (cpf_gerente) REFERENCES farmaceuticos(cpf)

);
-- detalhe aqui é que essa tabela referencia ela mesmo como chave estrangeira, lembre-se de auto relacionamento


-- insert das tabelas

INSERT INTO enfeites(id, nome, cor, tamanho, valor) VALUES (1,'arvore', 'verde', 5, 3.5),(2, 'bola sem detalhes', 'vermelho', 2, 2), (3, 'bola com detalhes', 'vermelho', 2, 3),(4, 'bola leão marinho', 'transparante', 4, 6),(5, 'bola com detalhes', 'vermelho', 2, 3), (6, 'bola de ouro', 'dourado', 2, 3), (7, 'papai noel', 'branco', 4, 10);




INSERT INTO farmaceuticos VALUES (1,1, 'FELIPE',500), (2,1, 'RODRIGO', 220), (3,1, 'Felipe', 300), (4,2, 'FeliPE',400), (5,1, 'hugo',100), (6,5, 'FELIPE', 50);  

