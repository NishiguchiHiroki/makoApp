class Boxlunch < ApplicationRecord
  
  has_many :users_menus
  has_many :users, through: :users_menus
end
