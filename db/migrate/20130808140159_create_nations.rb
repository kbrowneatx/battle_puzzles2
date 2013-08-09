class CreateNations < ActiveRecord::Migration
  def change
    create_table :nations do |t|
      t.string :name
      t.string :flag_img
      t.references :era, index: true

      t.timestamps
    end
  end
end
