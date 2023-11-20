USE [loja]
GO

/****** Object:  Table [dbo].[PessoaFisica]    Script Date: 20/11/2023 10:09:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PessoaFisica](
	[PessoaFID] [int] NOT NULL,
	[CPF] [varchar](11) NULL,
	[Idade] [int] NULL,
	[logradouro] [varchar](30) NULL,
	[Cidade] [varchar](30) NULL,
	[Estado] [varchar](30) NULL,
	[Telefone] [varchar](11) NULL,
	[Email] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[PessoaFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PessoaFisica]  WITH CHECK ADD FOREIGN KEY([PessoaFID])
REFERENCES [dbo].[Pessoa] ([PessoaID])
GO


