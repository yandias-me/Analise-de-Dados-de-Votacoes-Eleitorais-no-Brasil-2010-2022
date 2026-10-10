
truncate table public.votacao_total RESTART IDENTITY;
truncate table public.fotos_candidatos RESTART IDENTITY;
truncate table public.lat_long_estados RESTART IDENTITY;

create table public.votacao_total (
id serial primary key,
ano_eleicao integer,
dt_eleicao date,
nr_turno integer,
sg_uf text,
cd_municipio integer,
nm_municipio text,
nr_zona integer,
cd_cargo integer,
ds_cargo text,
nm_candidato text,
nr_partido integer,
sg_partido text,
nm_partido text,
qt_votos_nominais bigint,
qt_votos_nominais_validos bigint,
cd_sit_tot_turno integer,
ds_sit_tot_turno text
);

create table public.fotos_candidatos(
id serial primary key,
nm_candidato text,
url_foto text
);

create table public.lat_long_estados(
id serial primary key,
sg_uf text,
latitude numeric(10,7),
longitude numeric(10,7)
);