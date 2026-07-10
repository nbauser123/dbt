select
    try_to_number(game_id) as game_id,
    try_to_date(game_date) as game_date,
    try_to_number(home_team_id) as home_team_id,
    try_to_number(away_team_id) as away_team_id,
    try_to_number(home_score) as home_score,
    try_to_number(away_score) as away_score
from {{ ref('games') }}