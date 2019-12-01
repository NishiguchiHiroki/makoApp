class CreateSingleMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :single_menus do |t|
      t.string :name, null: false
      t.integer :price,null: false
      t.text :image,null: false
      t.string :allergy
      t.string :description,null: false
      t.text :ingredient,null: false
      t.timestamps
    end
  end
end
