class CreateBoxlunches < ActiveRecord::Migration[5.2]
  def change
    create_table :boxlunches do |t|
      t.string :name, null: false
      t.integer :price,null: false
      t.text :image,null: false
      t.string :allergies
      t.text :description,null: false
      t.text :food,null: false
      t.timestamps
    end
  end
end
