-- esse script só funciona depois de vc rodar o script insert...

--sintaxe
--UPDATE <nome da tabela> 
--	SET      <nome da coluna> = (<valor>) 
--   WHERE  <condicao>; 



-- aqui eu vou atualizar a tupla 7 e colocar como dono Jaime
UPDATE farmacias SET dono = 'Jaime' WHERE cnpj = 7 ;

-- sempre é uma pratica atualizar pela chave primaria
-- porque ela é única
-- mas podemos atualizar por outros campos...
UPDATE farmacias SET dono = 'Jaime' WHERE nome = 'droga rapida';

-- qual é o problema de atualizar pelos outros campos ?
-- imagine que jaime vendeu a farmacia de id 7...
-- se eu usar update farmacias SET dono ='lucas' WHERE dono  = 'Jaime' ;
-- as duas tabelas com o nome Jaime serao alteradas mas jaime só vendeu uma...
-- então tenha cuidado...


-- tenha cuidado também com a clausula where
-- sempre coloque ela, é muito comum a gente esquecer dela quando tá aprendendo e fazer isso
-- UPDATE farmacias set dono ='danilo';
-- isso vai fazer que todas as tabelas no banco tenham clausulas where 
-- ou seja, vai dar m3rda :) 


-- eu posso também atualizar dois campos...

UPDATE farmacias SET dono= 'Danilo', nome = 'Farmacia do Danilo' WHERE cnpj = 1 ;