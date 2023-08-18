{{ config(
    materialized='table',
    schema='staging'
)}}

select
NU_INSCRICAO as numero_incricao,
NU_ANO as numero_ano,
TP_FAIXA_ETARIA as tipo_faixa_etaria,
TP_SEXO as tipo_sexo,
TP_ESTADO_CIVIL as tipo_estado_civil,
TP_COR_RACA as tipo_cor_raca,
TP_NACIONALIDADE as tipo_nacionalidade,
TP_ST_CONCLUSAO as tipo_situacao_conclusao,
TP_ANO_CONCLUIU as tipo_ano_concluiu,
TP_ESCOLA as tipo_escola,
TP_ENSINO as tipo_ensino,
IN_TREINEIRO as indicados_treineiro,
CO_MUNICIPIO_ESC as codigo_municipio_escola,
NO_MUNICIPIO_ESC as nome_municipio_escola,
CO_UF_ESC as codigo_unidade_federacao_escola,
SG_UF_ESC as sigla_unidade_federacao_escola,
TP_DEPENDENCIA_ADM_ESC as tipo_dependencia_administrativa_escolar,
TP_LOCALIZACAO_ESC as tipo_localizacao_escola,
TP_SIT_FUNC_ESC as tipo_situacao_funcionamento_escola,
CO_MUNICIPIO_PROVA as codigo_municipio_prova,
NO_MUNICIPIO_PROVA as nome_muncipio_prova,
CO_UF_PROVA as codigo_unidade_federacao_prova,
SG_UF_PROVA as sigla_unidade_federacao_prova,
TP_PRESENCA_CN as tipo_presenca_ciencias_natureza,
TP_PRESENCA_CH as tipo_presenca_ciencias_humanas,
TP_PRESENCA_LC as tipo_presenca_linguagens_codigos,
TP_PRESENCA_MT as tipo_presenca_matematica,
CO_PROVA_CN as codigo_prova_ciencias_natureza,
CO_PROVA_CH as codigo_prova_ciencias_humanas,
CO_PROVA_LC as codgo_prova_liguagens_codigos,
CO_PROVA_MT as codigo_prova_matematica,
NU_NOTA_CN as nota_prova_ciencias_natureza,
NU_NOTA_CH as nota_prova_ciencias_humanas,
NU_NOTA_LC as nota_prova_linguagens_codigos,
NU_NOTA_MT as nota_prova_matematica,
TX_RESPOSTAS_CN  as texto_reposta_ciencias_natureza,
TX_RESPOSTAS_CH as texto_reposta_ciencias_humanas,
TX_RESPOSTAS_LC as texto_reposta_linguagens_codigos,
TX_RESPOSTAS_MT as texto_reposta_matematica,
TP_LINGUA as tipo_linguagem,
TX_GABARITO_CN as texto_gabarito_ciencias_natureza,
TX_GABARITO_CH as texto_gabarito_ciencias_humanas,
TX_GABARITO_LC as texto_gabarito_linguagem_codigos,
TX_GABARITO_MT as texto_gabarito_matematica,
TP_STATUS_REDACAO as tipo_status_redacao,
NU_NOTA_COMP1 as nota_competencia_1,
NU_NOTA_COMP2 as nota_competencia_2,
NU_NOTA_COMP3 as nota_competencia_3,
NU_NOTA_COMP4 as nota_competencia_4,
NU_NOTA_COMP5 as nota_competencia_5,
NU_NOTA_REDACAO as nota_competencia_redacao,
Q001 as questao_social_1,
Q002 as questao_social_2,
Q003 as questao_social_3,
Q004 as questao_social_4,
Q005 as questao_social_5,
Q006 as questao_social_6,
Q007 as questao_social_7,
Q008 as questao_social_8,
Q009 as questao_social_9,
Q010 as questao_social_10,
Q011 as questao_social_11,
Q012 as questao_social_12,
Q013 as questao_social_13,
Q014 as questao_social_14,
Q015 as questao_social_15,
Q016 as questao_social_16,
Q017 as questao_social_17,
Q018 as questao_social_18,
Q019 as questao_social_19,
Q020 as questao_social_20,
Q021 as questao_social_21,
Q022 as questao_social_22,
Q023 as questao_social_23,
Q024 as questao_social_24,
Q025 as questao_social_25,
from {{ source('enem','microdados_enem_2021') }}