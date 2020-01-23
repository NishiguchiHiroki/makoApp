class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :menu_id
      t.integer :quantity
      t.references :user, index: true, unique: true, null: false, foreign_key: true
      t.timestamps
    end
  end
end