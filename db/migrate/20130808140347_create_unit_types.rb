class CreateUnitTypes < ActiveRecord::Migration
  def change
    create_table :unit_types do |t|
      t.string :name
      t.references :nation, index: true
      t.references :unit_class, index: true
      t.string :toe_img

      t.timestamps
    end
  end
end
