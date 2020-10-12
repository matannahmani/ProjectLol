class AddMeanrateToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :meanrate, :float
    add_column :players, :totalrated, :integer
  end
end
