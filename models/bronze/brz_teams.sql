select
    try_to_number(team_id) as team_id,
    trim(team_name) as team_name,
    upper(trim(team_abbr)) as team_abbr,
    trim(conference) as conference
from {{ ref('teams') }}