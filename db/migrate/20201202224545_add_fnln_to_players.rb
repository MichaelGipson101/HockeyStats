class AddFnlnToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :fnln, :string
  end
end
