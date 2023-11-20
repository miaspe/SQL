USE [loja]
GO

/****** Object:  Table [dbo].[Produto]    Script Date: 20/11/2023 10:13:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Produto](
	[ProdutoID] [int] NOT NULL,
	[Nome_Produto] [varchar](60) NOT NULL,
	[Quantid_Prod] [varchar](50) NULL,
	[Preço_de_Venda] [decimal](7, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProdutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


