json.extract! player, :id, :name, :moto, :rank, :description, :created_at, :updated_at
json.url player_url(player, format: :json)
