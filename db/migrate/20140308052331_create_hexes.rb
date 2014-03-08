class CreateHexes < ActiveRecord::Migration
  def change
    create_table :hexes do |t|
      t.integer :user_id
      t.string :word
      t.integer :score1
      t.integer :score2
      t.integer :score3
      t.integer :score4
      t.integer :score5
      t.integer :score6

      t.timestamps
    end
  end
end
