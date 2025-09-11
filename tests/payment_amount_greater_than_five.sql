select amount_usd
from {{ ref('stg_stripe__payment') }}
where amount_usd <= 5