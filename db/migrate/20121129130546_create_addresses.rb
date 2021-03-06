class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :postal_code,                 null: false
      t.integer :prefecture_id,              null: false
      t.string :city,                        null: false
      t.string :house_number,                null: false
      t.string :building_name,               null: false
      
      t.timestamps
    end
  end
end
