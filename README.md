# Analise-de-Dados-de-Votacoes-Eleitorais-no-Brasil-2010-2022

Para este projeto foram escolhidos 4 anos de eleições a nivel nacional para realizar a análise das votações que foram os anos de 2010, 2014 ,2018 e 2022, foram escolhidas para análise apenas as votações para Presidente da Republica

# Coleta dos dados

O primeiro passo feito foi a coleta dos seguintes dados:
- Coleta dos dados de votações que foi feita diretamente do site do TSE (Tribunal Superior Eleitoral)
- Coleta dos dados de latitude e longitude dos estados que foi feita através de pesquisa com IA
- Coleta das URL's com fotos dos candidatos para apresentação dos dados

# Escolha das colunas a serem analisadas 

O segundo passo feito foi a escolha das colunas com os dados a serem analisados para que seja feita uma análise objetiva dos dados com o intuito de responder as perguntas que podem vir a surgir referente às votações das eleições como por exemplo: "Qual o estado que teve mais votos?", "Qual cidade teve menos votos?", "Qual foi a quantidade total de votos?"

# Criação de Tabelas da Área de STAGE

Feito a escolha das colunas a serem analisadas partimos para a criação das tabelas da área de STAGE via PostgreSQL, primeiramente criamos um banco com o nome stage_votacoes e nesse banco criamos as tabelas

# Tratamento dos Dados

O terceiro passo foi o processo de tratamento dos dados usando o Pentaho Data Integration consistindo na limpeza e padronização dos mesmos,  o tratamento foi feito inteiramente numa área de STAGE criada justamente para esse processo de tratamento com o intuito de preparar os dados para que eles sejam posteriormente transferidos para o Data Warehouse 
