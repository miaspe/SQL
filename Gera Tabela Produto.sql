use loja
CREATE TABLE Produto (
    ProdutoID INT PRIMARY KEY ,
    Nome_Produto VARCHAR(60) NOT NULL
);

--========================================================================================
use loja
INSERT INTO Produto (ProdutoID,Nome_Produto,Quantid_Prod,Preço_de_Venda) 
VALUES 
	(4, 'couve-flor','100 Unid', 1.31),
	(5, 'couve', '160 Unid', 1.33 );
	(1,'uva RED','15Kg', 8.31),
	(2,'Abacaxi','30Unid', 6.22),
	(3,'Cebolas','30Kg', 4.55);
--==========================================
    (4, 'couve-flor','100', 1.31),
	(5, 'couve', '160', 1.33 );
	(3, 'E', 'flora health', 'Extra mercadin', 1.01 , 100 , 101.00, '4', 'couve-flor', '3'),
	(4, 'E', 'flora health', 'zé das couves', 1.00 , 160 , 160.00, '5', 'couve', '3');

--==========================================
ALTER TABLE Produto
ADD Fornecedor varchar(20), 
    Preço_de_Venda dec (7,2);

ALTER TABLE Produto
ALTER COLUMN Quantid_Prod VARCHAR(50);
--==========================================
SELECT *
FROM Pessoa
JOIN PessoaJuridica ON Pessoa.PessoaID = PessoaJuridica.PessoaJID;
--==========================================

SELECT * from dbo.Produto