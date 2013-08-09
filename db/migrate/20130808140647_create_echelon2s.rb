class CreateEchelon2s < ActiveRecord::Migration
  def change
    create_table :echelon2s do |t|
      t.string :name
      t.references :echelon1, index: true
      t.references :unit_class, index: true

      t.timestamps
    end
  end
end
