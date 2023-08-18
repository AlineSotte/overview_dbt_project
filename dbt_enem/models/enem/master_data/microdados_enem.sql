{{
    config(
        materialized='incremental',
        schema='masterdata'
    )
}}


select *, '2020' as ano_arquivo_enem from {{ ref('stg_microdados_enem_2020')}}

union all

select *, '2021' as ano_arquivo_enem from {{ ref('stg_microdados_enem_2021')}}

union all

select *, '2022' as ano_arquivo_enem from {{ ref('stg_microdados_enem_2022')}}