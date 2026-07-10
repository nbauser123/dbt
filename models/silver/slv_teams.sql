select
    team_id,
    team_name,
    team_abbr,
    conference
from {{ ref('brz_teams') }}
where team_id is not null