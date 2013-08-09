class CreateUnitClasses < ActiveRecord::Migration
  def change
    create_table :unit_classes do |t|
      t.string :name
      t.string :icon_img
      t.text :description

      t.timestamps
    end
  end
end
