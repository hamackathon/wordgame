class RemoveGamesGameId < ActiveRecord::Migration
  def up
    remove_column :games, :game_id
      end

  def down
    add_column :games, :game_id, :integer
  end
end
