class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one     :order,         dependent: :destroy
  belongs_to  :address

  def prepare_order  #order買い物かごを作成
    order || create_order
  end
end
