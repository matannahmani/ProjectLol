class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :moto
      t.string :rank
      t.string :description

      t.timestamps
    end
  end
end
