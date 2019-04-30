-- exemplos de insert na nossa tabela
-- teste cada exemplo por vez no query tools do pgadmin
-- para vermos se os exemplos foram cadastrados devemos usar o comando select * from tabela, neste caso select * from farmacias

-- sintaxe INSERT INTO nomedatabela(campos1,campo2...) VALUES (campo1valor,campo2valor...) ;

-- exemplo bem comum
insert into farmacias(cnpj,dono, nome) values (1,'danilo', 'pague menos');
-- no exemplo  a seguir omitimos os campos
-- portato o SGBD entende que sao todos os campos na ordem que eu criei a tabela
insert into farmacias values (2,'hugo', 'permanente');
-- podemos inverter os campos
insert into farmacias(cnpj,nome,dono) values (3, 'trabalhador','felipe');
-- assim como podemos cadastrar algo sem passar uma coluna
insert into farmacias(cnpj,nome) values (4, 'droga rapida');

-- por fim podemos criar
insert into farmacias (cnpj, dono,nome) values (5,'rodrigo', 'drogazil'), (6,'bruno','big ben'), (7, 'sammir', 'farmacia do samir');

-- ah, os comandos em sql não sao case sensitive
-- ou seja, podem ser maiusculos, geralmente escrevemos os comandos em maiusculo. como a seguir:
-- os comandos não são case mas os campos são... Roger é diferente de roger 

INSERT INTO farmacias VALUES (8, 'roger', 'farmarcia brasil'); 



