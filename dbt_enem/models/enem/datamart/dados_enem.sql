
{{
    config(
        materialized='incremental',
        schema='masterdata'
    )
}}


select * from {{ ref('microdados_enem')}} as me
{% if is_incremental() %}
where me.ano_arquivo_enem >= (select max(me.me.ano_arquivo_enem from {{this}}))
{% endif %}