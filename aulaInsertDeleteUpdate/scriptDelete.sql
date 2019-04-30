--execute esse script por ultimo
-- ele vai apagar as tuplas do banco


--SINTAXE
--
--DELETE FROM <nome da tabela> 
-- 	WHERE  <condicao>; 


--aqui não tem grande mágica...
DELETE FROM farmacias WHERE cnpj = 8;

-- cuidado quando for deletar, geralmente use o chave primaria ou tenha certeza que o valor é unico...
-- se tiver dois valores (Jaime) ele vai deletar os dois também....

-- cuidado com a clausa where... sem ela o delete vai deletar tudo
-- delete from farmacias