class AddGameId < ActiveRecord::Migration
  def change
  	add_column :games,:geme_id,:integer
  	add_column :hexes,:geme_id,:integer
  end
end
