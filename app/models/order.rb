class Order < ApplicationRecord
  has_many :carts, dependent: :destroy
  has_many :menus, through: :carts
end
