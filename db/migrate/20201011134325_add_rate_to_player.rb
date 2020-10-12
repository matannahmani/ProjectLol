class AddRateToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :rate, :integer
  end
end
