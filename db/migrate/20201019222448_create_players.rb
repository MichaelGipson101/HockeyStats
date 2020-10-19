class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :season
      t.integer :goals
      t.integer :assists

      t.timestamps
    end
  end
end
