class Menu < ApplicationRecord
  has_many :carts,  dependent: :destroy
  has_many :orders,  through: :carts
  belongs_to :category

  has_one_attached :image
end
