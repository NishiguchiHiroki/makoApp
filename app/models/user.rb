class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :boxlunchs
  has_many :single_menus
  has_many :drink_menus
  has_many :reservations

  has_one :address
  has_many :orders
  
end
