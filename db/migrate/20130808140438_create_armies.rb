class CreateArmies < ActiveRecord::Migration
  def change
    create_table :armies do |t|
      t.string :name,									null: false
      t.references :user, 						index: true
      t.references :era, 							index: true
      t.references :nation, 					index: true
      t.integer :total_xp,						default: 0
      t.integer :map_stage,						default: 0
      t.text :game_data 
      t.integer :battles_fought,			default: 0
      t.integer :ech1_allowed,				default: 2
      t.integer :ech2_allowed,				default: 6

      t.timestamps
    end
  end
end
