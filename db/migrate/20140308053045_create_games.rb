class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user1_id
      t.integer :user2_id
      t.string :status

      t.timestamps
    end
  end
end
