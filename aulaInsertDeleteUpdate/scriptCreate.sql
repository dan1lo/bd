CREATE DATABASE pague_menos; -- para criar o bd, se for usar o pgadmin não precisa desse comando
CREATE TABLE farmacias (
cnpj INT, -- cpf e cnpj eh inteiro e nao serial porque é um num fixo que eh fornecido pelo cliente
dono TEXT,
nome TEXT,
PRIMARY KEY(cnpj)
);


CREATE TABLE farmaceuticos (
cpf INT,
cpf_gerente INT,
data_nascimento DATE,
nome TEXT,
PRIMARY KEY(cpf)
);


CREATE TABLE farmaceuticos_telefones (
-- a regra diz que atributos multivalorados nos devemos fazer o que ?
cpf_farmaceuticos INT,
telefone INT,
PRIMARY KEY(cpf_farmaceuticos, telefone), -- a chave é composta 
FOREIGN KEY(cpf_farmaceuticos) REFERENCES  farmaceuticos(cpf)
);


CREATE TABLE remedios (
id SERIAL, -- aqui pode ser serial 
Nome TEXT,
Formula TEXT,
Data_de_validade DATE,
Valor float,
PRIMARY KEY(id)
);

CREATE TABLE farmacia_vende_remedios (
id_remedio INT,
cnpj_farmacia INT,
FOREIGN KEY (cnpj_farmacia) references farmacias(cnpj),
FOREIGN KEY (id_remedio) references remedios(id)
-- n para n sao duas chaves estrangeiras...
);
