
select * from public.votacao_total;

select cd_sit_tot_turno
from public.votacao_total
where cd_sit_tot_turno is null; ------ 0

select ano_eleicao
from public.votacao_total
where ano_eleicao is null; -------- 0

select ds_sit_tot_turno
from public.votacao_total
where cd_sit_tot_turno is null; ------ 0

select dt_eleicao
from public.votacao_total
where dt_eleicao is null; ------- 0


select nr_turno
from public.votacao_total
where nr_turno is null; ------- 0

select sg_uf
from public.votacao_total
where sg_uf is null; ------- 0

select cd_municipio
from public.votacao_total
where cd_municipio is null; ------- 0

select nm_municipio
from public.votacao_total
where nm_municipio is null; ------- 0

select nr_zona
from public.votacao_total
where nr_zona is null; ------- 0

select cd_cargo
from public.votacao_total
where cd_cargo is null; ------- 0

select ds_cargo
from public.votacao_total
where ds_cargo is null; ------- 0

select nm_candidato
from public.votacao_total
where nm_candidato is null; ------- 0

select nr_partido
from public.votacao_total
where nr_partido is null; ------- 0

select sg_partido
from public.votacao_total
where sg_partido is null; ------- 0

select nm_partido
from public.votacao_total
where nm_partido is null; ------- 0


select qt_votos_nominais
from public.votacao_total
where qt_votos_nominais is null; ------- 0

select qt_votos_nominais_validos
from public.votacao_total
where qt_votos_nominais_validos is null; ------- 0