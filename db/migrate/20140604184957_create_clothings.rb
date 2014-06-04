class CreateClothings < ActiveRecord::Migration
  def change
    create_table :clothings do |t|
      t.string :name
      t.integer :unit_price

      t.timestamps
    end
  end
end
