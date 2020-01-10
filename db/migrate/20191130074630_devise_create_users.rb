# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email,                    null: false, default: ""
      t.string :encrypted_password,       null: false, default: ""
      t.string :last_name,                null: false
      t.string :first_name,               null: false
      t.string :last_name_kana,           null: false
      t.string :first_name_kana,          null: false
      t.integer :birthdate_year,          null: false
      t.integer :birthdate_month,         null: false
      t.integer :birthdate_day,           null: false
      t.string :phone_number,            null: false
      

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps null: false
    end

    add_index :users, :email                
    add_index :users, :reset_password_token
  end
end
