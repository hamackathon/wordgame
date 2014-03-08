class RecreateGamesGameId < ActiveRecord::Migration
  def change
    remove_column :games, :geme_id
    remove_column :hexes, :geme_id
    add_column :hexes, :game_id, :integer
  end
end
