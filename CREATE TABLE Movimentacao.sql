USE [loja]
GO

/****** Object:  Table [dbo].[Movimentacao]    Script Date: 20/11/2023 10:06:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Movimentacao](
	[MovimentID] [int] NOT NULL,
	[TipoMov_E_S] [varchar](20) NOT NULL,
	[Fornecedor] [varchar](100) NULL,
	[Comprador] [varchar](100) NULL,
	[PrecoUnitario] [decimal](7, 2) NOT NULL,
	[Quantidade] [int] NOT NULL,
	[ValorTotal] [decimal](7, 2) NOT NULL,
	[ProdutoID] [int] NULL,
	[Nome_Produto] [varchar](100) NULL,
	[Operador_Usuario] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MovimentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Movimentacao] ADD  DEFAULT (NEXT VALUE FOR [MovimentID_Seq]) FOR [MovimentID]
GO

ALTER TABLE [dbo].[Movimentacao]  WITH CHECK ADD FOREIGN KEY([ProdutoID])
REFERENCES [dbo].[Produto] ([ProdutoID])
GO


