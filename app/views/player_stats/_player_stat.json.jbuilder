json.extract! player_stat, :id, :rate, :player_id, :stat_id, :created_at, :updated_at
json.url player_stat_url(player_stat, format: :json)
