class CreateCarts < ActiveRecord::Migration[5.2]
  def change
      create_table :carts do |t|
      t.references :menu,     index: true, null: false, foreign_key: true
      t.integer :quantity,    defalut: 0
      t.references :order,    index: true, null: false,foreign_key: true
      t.references :user,     foreign_key: true
      t.timestamps
    end
  end
end
