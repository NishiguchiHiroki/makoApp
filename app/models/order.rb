class Order < ApplicationRecord
  has_many :carts, dependent: :destroy
  has_many :menus, through: :carts

  def prepare_order
    order || create_order
  end
  
end
