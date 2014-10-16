class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :item
      t.string :name
      t.float :price
      t.string :photo_path
      t.string :string
      t.string :cuisine
      t.string :string
      t.string :restaurant_name
      t.boolean :harrys_choice

      t.timestamps
    end
  end
end
