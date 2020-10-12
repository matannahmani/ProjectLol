class ChangeRateToPlayers < ActiveRecord::Migration[6.0]
  def change
    change_column :players, :rate, :float
  end
end
