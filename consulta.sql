use loja
SELECT * from dbo.usuario
SELECT * from dbo.Pessoa
SELECT * from dbo.Pessoafisica
SELECT * from dbo.PessoaJuridica
SELECT * from dbo.Produto

select next value for sTeste
select next value for pessoa_id_seq

SELECT * from dbo.Pessoa

--========================================================================================
--drop table Pessoa
--========================================================================================
CREATE SEQUENCE pessoa_id_seq START WITH 1 INCREMENT BY 1;

-- Criação da tabela de nomes
CREATE TABLE Produto (
    ProdutoID INT PRIMARY KEY ,
    Nome_Produto VARCHAR(60) NOT NULL
);
--========================================================================================
INSERT INTO Pessoa (Nome) VALUES
    ('Bravo cunha'),
    ('Ary Devito');
    ('Carlos Oakes');
--========================================================================================
--========================================================================================
ALTER TABLE Pessoajuridica
ADD FOREIGN KEY (PessoaJID) REFERENCES Pessoa (PessoaID);
--========================================================================================


--FOREIGN KEY (PessoaJID) REFERENCES Pessoa (PessoaID);
ALTER TABLE PessoaFisica
DROP COLUMN Nome;

INSERT INTO PessoaFisica (Logradouro, Cidade, Estado, Telefone, Email) VALUES
    (1, 'Rua Aberta', 'Arimbá', 'SP', '123456789', 'Simão_cunha@email.com'),
    (2, 'Rua do Sob', 'Bacará', 'RJ', '987654321', 'Mary_Portland@email.com'),
    (4, 'Rua Castilho', 'Cade Ocê', 'MG', '111222333', 'Bravo_cunha@email.com');
--========================================================================================
	UPDATE PessoaJuridica
SET
    Logradouro = 'Rua Castanha',
    Cidade = 'Cadeira',
	Estado = 'MG',
	Telefone = '133222333',
	Email = 'BBB@email.com'
WHERE
    PessoaJID = 1;
--========================================================================================
SELECT *
FROM Pessoa
JOIN PessoaJuridica ON Pessoa.PessoaID = PessoaJuridica.PessoaJID;