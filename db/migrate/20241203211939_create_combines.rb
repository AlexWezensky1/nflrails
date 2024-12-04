class CreateCombines < ActiveRecord::Migration[8.0]
  def change
    create_table :combines do |t|
      t.integer :season
      t.integer :draft_year
      t.string :draft_team
      t.integer :draft_round
      t.integer :draft_ovr
      t.string :pfr_id
      t.string :cfb_id
      t.string :player_name
      t.string :pos
      t.string :school
      t.string :ht
      t.integer :wt
      t.float :forty
      t.integer :bench
      t.float :vertical
      t.integer :broad_jump
      t.float :cone
      t.float :shuttle

      t.timestamps
    end
  end
end
