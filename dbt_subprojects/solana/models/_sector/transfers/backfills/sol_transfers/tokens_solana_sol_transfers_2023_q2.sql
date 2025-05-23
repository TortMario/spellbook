{{ config(
    schema = 'tokens_solana',
    alias = 'sol_transfers_2023_q2',
    tags = ['static'],
    partition_by = ['block_date'],
    materialized = 'table',
    file_format = 'delta'
) }}

{{ solana_sol_transfers_macro(
    "cast('2023-04-01' as timestamp)",
    "cast('2023-07-01' as timestamp)"
) }} 