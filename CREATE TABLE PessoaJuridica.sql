USE [loja]
GO

/****** Object:  Table [dbo].[PessoaJuridica]    Script Date: 20/11/2023 10:10:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PessoaJuridica](
	[PessoaJID] [int] NOT NULL,
	[CNPJ] [varchar](14) NULL,
	[Logradouro] [varchar](100) NULL,
	[Cidade] [varchar](50) NULL,
	[Estado] [varchar](2) NULL,
	[Telefone] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Nome] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PessoaJID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PessoaJuridica]  WITH CHECK ADD FOREIGN KEY([PessoaJID])
REFERENCES [dbo].[Pessoa] ([PessoaID])
GO


