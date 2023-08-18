{{
    config(
        materialized='table',
        schema='masterdata'
    )
}}


select * from {{ source('enem','itens_prova_2020')}}

union all

select * from {{ source('enem','itens_prova_2020')}}