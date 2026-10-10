select distinct cd_sit_tot_turno
from public.votacao_total;

select distinct ano_eleicao
from public.votacao_total;

select distinct ds_sit_tot_turno
from public.votacao_total;

select distinct dt_eleicao
from public.votacao_total;

select distinct nr_turno
from public.votacao_total;

select distinct sg_uf
from public.votacao_total
order by sg_uf;

select distinct cd_municipio
from public.votacao_total;

select distinct nm_municipio
from public.votacao_total
order by nm_municipio;

select distinct cd_municipio, nm_municipio
from public.votacao_total
order by nm_municipio;

select distinct nr_zona
from public.votacao_total;

select distinct cd_cargo
from public.votacao_total;

select distinct ds_cargo
from public.votacao_total;

select distinct nm_candidato
from public.votacao_total;

select distinct nr_partido
from public.votacao_total
order by nr_partido;

select distinct sg_partido
from public.votacao_total;

select distinct ano_eleicao, nr_partido, sg_partido, nm_partido
from public.votacao_total
order by ano_eleicao;

select distinct qt_votos_nominais
from public.votacao_total;

select distinct qt_votos_nominais_validos
from public.votacao_total;

select * from public.fotos_candidatos; --------- 32
select * from lat_long_estados; ------ 27
SELECT * FROM public.votacao_total; ------317179