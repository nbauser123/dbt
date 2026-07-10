select
    game_id,
    game_date,
    home_team_id,
    away_team_id,
    home_score,
    away_score
from {{ ref('brz_games') }}
where game_id is not null
  and home_team_id is not null
  and away_team_id is not null