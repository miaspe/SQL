-- Criar tabela movimentaçao
use loja 

CREATE SEQUENCE MovimentID_Seq
    START WITH 1
    INCREMENT BY 1;

-- Criação da tabela de movimentação
CREATE TABLE Movimentacao (
    MovimentID INT PRIMARY KEY DEFAULT NEXT VALUE FOR MovimentID_Seq,
    TipoMov_E_S VARCHAR(20) NOT NULL,
    Fornecedor VARCHAR(100),
    Comprador VARCHAR(100),
    PrecoUnitario DECIMAL(7, 2) NOT NULL,
    Quantidade INT NOT NULL,
    ValorTotal DECIMAL(7, 2) NOT NULL,
    ProdutoID INT,
    Nome_Produto VARCHAR(100),
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID)
);
--========================================================================================
select next value for MovimentID_Seq

use loja 
SELECT * from dbo.Movimentacao

SELECT *
FROM Movimentacao
WHERE TipoMov_E_S = 'E';

SELECT Nome_Produto
FROM TipoMov_E_S = 'S'
WHERE TipoMov_E_S = 'S';
----------------------------------------------------------
-- Consulta para obter os nomes das colunas da tabela
DECLARE @TableName NVARCHAR(128) = 'Movimentacao';

-- Consulta para obter os nomes das colunas da tabela
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = @TableName;
-------------------------------------------------------------------------------------------
use loja 
INSERT INTO Movimentacao (MovimentID,TipoMov_E_S,Fornecedor,Comprador,PrecoUnitario,
			Quantidade,ValorTotal,ProdutoID,Nome_Produto, Operador_Usuario ) VALUES
    (6, 'S', 'quintal do pai', 'mercadão', 6.22 , 11 , 68.42, '2', 'Abacaxi', '2');
	(4, 'E', 'flora health', 'zé das couves', 1.00 , 160 , 160.00, '5', 'couve', '3');
    (2, 'S', 'fruits', 'mercadão', 8.31 , 2 , 16.62, 1 , 'uva RED', '1');
    (4, 'Rua Castilho', 'Cade Ocê', 'MG', '111222333', 'Bravo_cunha@email.com');

ALTER TABLE Movimentacao
--drop column Operador;
ADD Operador_Usuario varchar(10);
---------------------------------------------------
use loja 
SELECT * from dbo.Movimentacao

SELECT
    ProdutoID,
    Nome_Produto,
    SUM(ValorTotal) AS ValorTotalSaidas
FROM
    Movimentacao
WHERE
    TipoMov_E_S = 'S'
GROUP BY
    ProdutoID, Nome_Produto;
---------------------------------------------------
SELECT DISTINCT
    *
FROM
    usuario
LEFT JOIN
    [dbo].[Movimentacao] ON Operador_Usuario = Operador_Usuario
WHERE
    TipoMov_E_S IS NULL OR TipoMov_E_S != 'E';
-------------------------------------------------
SELECT DISTINCT
    Operador_Usuario
FROM
    Movimentacao
WHERE
    TipoMov_E_S IS NULL OR TipoMov_E_S != 'E';
-----------------------------------------------
select * from Movimentacao
SELECT
    Operador_Usuario,
    
    SUM(ValorTotal) AS ValorTotalEntradas
FROM
    Movimentacao
WHERE
    TipoMov_E_S = 'E'
GROUP BY
    Operador_Usuario
-----------------------------------------------
select * from Movimentacao
SELECT
    AVG(PrecoPonderado) AS MediaPonderada
FROM (
    SELECT
        ProdutoID,
        AVG(PrecoUnitario * Quantidade) AS PrecoPonderado
    FROM
        Movimentacao
		WHERE
        [TipoMov_E_S] = 'S' 
    GROUP BY
        ProdutoID
) AS CalculosPorProduto;