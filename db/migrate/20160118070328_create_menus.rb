class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :name,            null: false
      t.integer :price,          null: false
      t.text :image,             null: false
      t.string :allergy
      t.string :description,     null: false
      t.text :ingredient,        null: false
      t.references :category,  foreign_key: true
      t.timestamps
    end
  end
end
