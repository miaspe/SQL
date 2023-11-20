-- ver pasta programação/sequencias dentro de loja
use loja
create sequence sTeste as smallint
start with 1
increment by 1
minvalue 1
maxvalue 200
;
--[owned by {table_name.colunm_name | None}]

/* copiar e colar / selecionar o que quiser executar e F5 pra executar:
-- alterar a sequence: apartir de quanto quer reiniciar nesse caso Exemplo com 1:
alter sequence sTeste restart with 1
minvalue 0
increment by 10
cicle
*/
--select next value for sTeste

drop sequence sTeste

/*
-----------------------------------------
alter sequence restart with 1
increment by 1
minvalue 1
cycle
-----------------------------------------
/*

use loja
SELECT * from dbo.usuario
SELECT * from dbo.Pessoa
SELECT * from dbo.Pessoafisica
SELECT * from dbo.PessoaJuridica
SELECT * from dbo.Produto