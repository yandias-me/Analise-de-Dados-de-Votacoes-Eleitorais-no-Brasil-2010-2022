CREATE TABLE public.dim_tempo(
	id SERIAL PRIMARY KEY,
	ano_eleicao INTEGER,
	nr_turno INTEGER,
	dt_eleicao DATE
);

CREATE TABLE public.dim_localidade(
	id SERIAL PRIMARY KEY,
	sg_uf TEXT,
	cd_municipio INTEGER,
	nm_municipio TEXT
);

CREATE TABLE public.dim_cargo(
	id SERIAL PRIMARY KEY,
	cd_cargo INTEGER,
	ds_cargo TEXT
);

CREATE TABLE public.dim_candidato(
	id SERIAL PRIMARY KEY,
	nr_candidato BIGINT,
	nm_candidato TEXT
);

CREATE TABLE public.dim_partido(
	id SERIAL PRIMARY KEY,
	nr_partido INTEGER,
	sg_partido TEXT,
	nm_partido TEXT
);

CREATE TABLE public.dim_situacao(
	id SERIAL PRIMARY KEY,
	cd_sit_tot_turno INTEGER,
	ds_sit_tot_turno TEXT
);

CREATE TABLE public.fato_votacao(
	id SERIAL PRIMARY KEY,
	id_tempo INTEGER REFERENCES public.dim_tempo(id),
	id_localidade INTEGER REFERENCES public.dim_localidade(id),
	id_cargo INTEGER REFERENCES public.dim_cargo(id),
	id_candidato INTEGER REFERENCES public.dim_candidato(id),
	id_partido INTEGER REFERENCES public.dim_partido(id),
	id_situacao INTEGER REFERENCES public.dim_situacao(id),
	qt_votos_nominais BIGINT,
	qt_votos_nominais_validos BIGINT
);