class CreateEchelon1s < ActiveRecord::Migration
  def change
    create_table :echelon1s do |t|
      t.string :name
      t.references :army, index: true

      t.timestamps
    end
  end
end
