class AddGameId < ActiveRecord::Migration
  def change
  	add_column :hexes,:game_id,:integer
  end
end
