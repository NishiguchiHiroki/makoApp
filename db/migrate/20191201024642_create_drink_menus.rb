class CreateDrinkMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :drink_menus do |t|
      t.string :name, null: false
      t.integer :price,null: false
      t.text :image,null: false
      t.string :description,null: false
      t.timestamps
    end
  end
end
