class Stat < ApplicationRecord
  has_many :player_stat
  has_many :player, :through => :player_stat
end
