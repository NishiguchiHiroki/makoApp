class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :boxlunch_id
      t.integer :single_menu_id
      t.integer :drink_menus_id
      t.integer :reservations_id

      t.references :user, foreign_key: true
      t.references :address, foreign_key: true
      t.timestamps
    end
  end
end
