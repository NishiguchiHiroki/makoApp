class Order < ApplicationRecord
  has_many :boxlunchs
  has_many :single_menus
  has_many :drink_menus
  has_many :reservations

  belongs_to :user
  belongs_to :address
  
end
