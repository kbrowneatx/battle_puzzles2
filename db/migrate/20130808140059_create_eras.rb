class CreateEras < ActiveRecord::Migration
  def change
    create_table :eras do |t|
      t.string :name
      t.text :description
      t.string :ech1_name
      t.string :ech2_name

      t.timestamps
    end
  end
end
