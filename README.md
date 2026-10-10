# Analise-de-Dados-de-Votacoes-Eleitorais-no-Brasil-2010-2022

Para este projeto foram escolhidos 4 anos de eleições a nivel nacional para realizar a análise das votações que foram os anos de 2010, 2014 ,2018 e 2022, foram escolhidas para análise apenas as votações para Presidente da Republica

# Coleta dos dados

O primeiro passo feito foi a coleta dos seguintes dados:
- Coleta dos dados de votações e dos arquivos "leiame" que foi feita diretamente do site do TSE (Tribunal Superior Eleitoral),
- Coleta dos dados de latitude e longitude dos estados que foi feita através de pesquisa com IA e colocada manualmente em uma planilha com o nome de: estados_lat_long.csv
- Coleta das URL's com fotos dos candidatos para apresentação dos dados e colocada manualmente em uma planilha com o nome de candidatos_presidentes.csv

# Escolha das colunas a serem analisadas 

O segundo passo feito foi a escolha das colunas com os dados a serem analisados para que seja feita uma análise objetiva dos mesmos tendo como intuito responder à perguntas que podem vir a surgir referente às votações das eleições como por exemplo: "Qual o estado que teve mais votos?", "Qual cidade teve menos votos?", "Qual foi a quantidade total de votos?", as colunas escolhidas estão descritas no arquivo Colunas Utilizadas.txt

# Criação de Tabelas da Área de STAGE

Feito a escolha das colunas a serem analisadas partimos para o terceiro passo que é a criação das tabelas da área de STAGE via PostgreSQL, primeiramente foi criado um banco dentro do PostgreSQL com o nome stage_votacoes e nesse banco foram criadas as tabelas conforme descrito no arquivo criacao_tabela_stage.sql, a área de STAGE foi criada para o processo de tratamento dos dados tendo como intuito preparar os dados para que eles sejam posteriormente transferidos para o Data Warehouse, o modelo de stage criado está apresentado no arquivo Tabelas STAGE.png

# Tratamento dos Dados e Carga na área de STAGE

O quarto passo foi o processo de tratamento dos dados e carga dos dados na área de STAGE usando o Pentaho Data Integration consistindo na limpeza e padronização dos mesmos conforme descrito nos arquivos .ktr contidos dentro da pasta com o nome de ETL STAGE

# Análise Exploratória STAGE

O quinto passo realizado após o tratamento e carga no STAGE foi fazer a análise exploratória dos dados através de consultas SQL no PgAdmin(PostgreSQL) descritas nos arquivos analise_exploratoria_distinct_tabelas_stage.sql e analise_exploratoria_valores_null_tabelas_stage.sql , esse passo teve como finalidade:
- Verificar a quantidade total de linhas de cada tabela do STAGE.
- Verificar se os dados das colunas das tabelas estão corretos e se não haviam repetições de dados.
- Verificar se tinha algum campo da tabela com valor nulo.

# Criação de Tabelas do Data Warehouse (Tabelas Fato e Dimensão)

O sexto passo foi a criação das tabelas do modelo de Data Warehouse via comandos SQL no PgAdmin(PostgreSQL), primeiramente foi criado um banco dentro do PostgreSQL com o nome de data_warehouse_votacoes e nesse banco foram criadas as tabelas conforme descritos no arquivo criacao_tabela_datawarehouse.sql, o modelo de Data Warehouse criado está apresentado no arquivo Tabelas DATA WAREHOUSE.png

# Transferencia dos dados para Data Warehouse

O sétimo passo foi a transferencia dos dados da área de STAGE para o Data Warehouse usando o Pentaho Data Integration conforme descrito nos arquivos .ktr contidos dentro da pasta com o nome de ETL DATA WAREHOUSE

# Análise Exploratória Data Warehouse

O oitavo passo realizado foi a análise exploratória dos dados contidos dentro do Data Warehouse através de consultas SQL no PgAdmin(PostgreSQL) conforme descrito no arquivo analise_exploratoria_datawarehouse.sql, essa análise exploratória teve como principal finalidade verificar o número total de linhas contidas em todas as tabelas do banco.

# Criação dos Dashboards no Power BI

O nono e ultimo passo foi a criação dos Dashboards no Power BI confrome apresentado no arquivo Análise Eleições para Presidente.pbix, foi feita a conexão do Power BI com o PostgreSQL e assim montado o relatório final em apenas 1 aba.



